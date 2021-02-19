#!/bin/bash

set -euo pipefail

eksctl create cluster -f config.yaml
