# 0828 分支说明

## 推荐构建方式

### 1. 下载依赖包

执行 `download_packages.sh` 脚本，或手动参照脚本中的 URL 将文件下载到 `packages` 目录。此步骤用于解决部分地区对 GitHub Raw Content 连接性不佳的问题。

### 2. 执行构建

```bash
bash build_centos7.sh
```

### 3. 其他 CentOS 版本说明

基于 CentOS 5/6 等版本的 Dockerfile 未做修改，保持主干分支在构建期间联网下载的模式。使用这些版本构建时，需确保构建环境的网络对 GitHub Raw Content 有较好的连接性。

---

## 关键改动

1. **替换 `neople` 文件夹** — 通过类似 DP 插件的形式实现，实际可能无显著功能变化。
2. **修改 Channel 默认端口** — 频道端口从 10011/11011 调整为 **7101**。
3. **新增后台服务** — `root/dist` 下新增一个后台服务，监听容器内 **6780 端口**，数据库 game 密码 `uu5!^%jg` 才可使用（实际可能无实际用途）。
4. **替换默认密钥文件** — 使用了与主干不同的密钥对。
5. **暂去除 DP 挂载** — 防止与 0828 插件冲突，启动时不再挂载 DP 目录。
6. **Game 启动挂载 SO** — `df_game_r` 启动时挂载 0828 提供的两个 `.so` 文件。

---

## 0527 更新

7. 更新最新的服务端插件。
8. SQL 初始化时自动为 `inventry` 库补充缺失字段。

---

## 0529 更新

7. PVF 文件采用分卷压缩形式（`Script.tgz.part_*`），对应启动脚本已改为：
   ```bash
   cat /home/template/init/Script.tgz.part_* > /home/template/init/Script.tgz
   tar -zxvf /home/template/init/Script.tgz -C /home/template/init/
   ```

8. 换用 0828 汉化版 `Script.pvf`，不再使用原版客户端 PVF。**注意：启动服务端后，需将新的 PVF 替换到客户端目录**。

---

## Docker 网络配置

因 0828 服务端插件可能要求 IP 必须为 `192.168.200.131`，建议新建一个 Docker 网段：

```bash
docker network create --subnet=192.168.200.0/24 dnf-server
```

容器启动时加入以下参数：

```bash
--network=dnf-server --ip 192.168.200.131
```

 以确保服务端插件正常运行。

---

## 推荐启动命令

> `PUBLIC_IP`、挂载路径、硬件资源限制等按实际环境调整。

```bash
docker run -d \
  -e PUBLIC_IP=192.168.199.128 \
  -e SERVER_GROUP_DB=cain \
  -e SERVER_GROUP=3 \
  -e WEB_USER=root \
  -e WEB_PASS=123456 \
  -e DNF_DB_ROOT_PASSWORD=123456 \
  -e DNF_DB_GAME_PASSWORD='uu5!^%jg' \
  -e GM_ACCOUNT=gmuser \
  -e GM_PASSWORD=gmpass \
  -v /home/server/mysql:/var/lib/mysql \
  -v /home/server/neople:/home/neople \
  -v /home/server/root:/root \
  -v /home/server/data:/data \
  -v /home/server/log:/home/neople/game/log \
  -p 8088:8088 -p 18080:80 -p 2000:180 \
  -p 3306:3306/tcp -p 7600:7600/tcp -p 881:881/tcp \
  -p 7101:7101/tcp -p 7101:7101/udp \               # ① 频道端口 7101 (主干为 7001)
  -p 30011:30011 -p 31011:31011 \
  -p 30052:30052 -p 31052:31052 \
  -p 10011:30011/tcp -p 11011:31011/udp \            # ② 映射旧端口以适配简易登录器探测
  -p 10052:30052/tcp -p 11052:31052/udp \            # ② 同上
  -p 7300:7300/tcp -p 7300:7300/udp \
  -p 2311-2313:2311-2313/udp \
  -p 6780:6780/tcp \
  --cap-add=NET_ADMIN --hostname=dnf \
  --cpus=4 --memory=8g --memory-swap=-1 --shm-size=8g \
  --name=dnf-0828 \
  --network=dnf-server --ip 192.168.200.131 \        # ③ 固定容器 IP，0828 插件需要
  1995chen/dnf:centos7-xxxxxxxx
```

**端口说明：**

| 标注 | 说明                                                                                           |
|---|----------------------------------------------------------------------------------------------|
| ① | `7101` 替换了主干分支的 `7001` 频道端口，0828 版本的默认频道使用此端口。                                               |
| ② | 部分简易登录器写死了对 `10011`/`10052` 等旧端口的探测逻辑，将这些外部端口转发到容器内真实端口（`30011`/`30052`），保证登录器兼容性。           |
| ③ | 0828 服务端插件可能硬编码了 `192.168.200.131` 作为服务地址，通过 `--network=dnf-server --ip` 固定容器 IP，避免插件无法正常工作。 |

> 镜像标签 `centos7-xxxxxxxx` 请替换为实际构建生成的版本号。
