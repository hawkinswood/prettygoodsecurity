#!/bin/zsh
cd "$(dirname "$0")"
hugo server -D --bind=0.0.0.0 --baseURL=http://localhost:1313/prettygoodsecurity/
