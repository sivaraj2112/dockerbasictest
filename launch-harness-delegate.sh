#!/bin/bash -e

sudo docker pull harness/delegate:latest

sudo docker run -d --restart unless-stopped --hostname=$(hostname -f | head -c 63) \
-e ACCOUNT_ID=2AnobVrAQIK-W0aCMr-oWg \
-e ACCOUNT_SECRET=f49ec06874abad8f02d0f0740a298f6f \
-e MANAGER_HOST_AND_PORT=https://app.harness.io/gratis \
-e WATCHER_STORAGE_URL=https://app.harness.io/public/free/freemium/watchers \
-e WATCHER_CHECK_LOCATION=current.version \
-e REMOTE_WATCHER_URL_CDN=https://app.harness.io/public/shared/watchers/builds \
-e DELEGATE_STORAGE_URL=https://app.harness.io \
-e DELEGATE_CHECK_LOCATION=delegatefree.txt \
-e DELEGATE_NAME=sivaharness \
-e DELEGATE_PROFILE=Q6OqPmMFQVucP2SziPDX0w \
-e DELEGATE_TYPE=DOCKER \
-e DEPLOY_MODE=KUBERNETES \
-e PROXY_HOST= \
-e PROXY_PORT= \
-e PROXY_SCHEME= \
-e PROXY_USER= \
-e PROXY_PASSWORD= \
-e NO_PROXY= \
-e PROXY_MANAGER=true \
-e POLL_FOR_TASKS=false \
-e HELM_DESIRED_VERSION= \
-e CF_PLUGIN_HOME= \
-e USE_CDN=true \
-e CDN_URL=https://app.harness.io \
-e JRE_VERSION=1.8.0_242 \
-e HELM3_PATH= \
-e HELM_PATH= \
-e CF_CLI6_PATH= \
-e CF_CLI7_PATH= \
-e KUSTOMIZE_PATH= \
-e OC_PATH= \
-e KUBECTL_PATH= \
-e CLIENT_TOOLS_DOWNLOAD_DISABLED=false \
harness/delegate:latest
