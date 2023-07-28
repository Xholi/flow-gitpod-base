# You can find the latest tags here: https://github.com/estuary/flow/pkgs/container/flow
FROM ghcr.io/estuary/flow:v0.3.4-19-g108864c33 as flow_base

# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-base/tags
FROM gitpod/workspace-base:2023-02-27-14-14-03

COPY --from=flow_base /usr/local/bin/* /usr/local/bin
