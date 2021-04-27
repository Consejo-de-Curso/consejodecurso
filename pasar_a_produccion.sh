#!/bin/bash
aws s3 sync --cache-control max-age=30 --delete . s3://consejodecurso.cl
aws cloudfront create-invalidation --distribution-id EJYCXVE34GDDN  --paths '/*'