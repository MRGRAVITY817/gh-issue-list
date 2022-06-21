# Github Issue Lister

A simple Github issue lister

## How to try

```bash
$ mix escript.build

# ./issues <author> <repo> <limit>
$ ./issues gluesql gluesql 4

num |           created_at |                                                                         title
----+----------------------+------------------------------------------------------------------------------
602 | 2022-06-12T03:50:40Z |                                              Some questions regarding gluesql
604 | 2022-06-12T06:03:08Z | "error[E0433]: failed to resolve: use of undeclared type `SledStorage`" Issue
609 | 2022-06-18T09:41:54Z |                                            Support `STDEV` aggregate function
610 | 2022-06-19T13:16:57Z |                  Suggestion: Use commands instead of &str to execute commands
```

