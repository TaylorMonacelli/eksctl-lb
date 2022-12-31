#!/bin/bash

set -xeuo pipefail

eksctl create cluster -f config.yaml
