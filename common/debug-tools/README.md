# debug-tools

基于ubuntu，包含常用工具，用于debug容器

## 示例

### 在k8s中debug容器

1. pod 里的所有容器共享进程 namespace

    ```yaml
    spec:
      shareProcessNamespace: true
    ```

2. 创建 Ephemeral Container

    `kubectl debug <target pod name> -it --image=172.30.1.1/common/debug-tools:latest -c debugger`
