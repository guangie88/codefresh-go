# codefresh-go

[![Codefresh build status]( https://g.codefresh.io/api/badges/pipeline/guangie88/guangie88%2Fcodefresh-go%2Fcodefresh-go-test?branch=master&key=eyJhbGciOiJIUzI1NiJ9.NWM4MjcyMzg3Y2NkOTUzZTcxM2RiMjRl.cTJ8XB8rM4mRl2LmZBHaIVZ92MxdGgb7Mmib1jt8o4E&type=cf-1)]( https://g.codefresh.io/pipelines/codefresh-go-test/builds?repoOwner=guangie88&repoName=codefresh-go&serviceName=guangie88%2Fcodefresh-go&filter=trigger:build~Build;branch:master;pipeline:5c83929790bbd7bfb7ae2540~codefresh-go-test)

Experimental set-up for doing Codefresh CI/CD on demo Go-based project.

## How to test

```bash
go test -v ./...
```

## How to build binary

```bash
go build -v
```

You should see `codefresh-go` executable being built.
