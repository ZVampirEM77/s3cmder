# s3cmder

## Introduction

A tool for using s3cmd easily

Installation

$ source setup.sh $ACCESSKEY $SECRETKEY $RUNNERNAME $HOST

or

$ source setup.sh $ALLINONE $HOST


In the second usage case, the AccessKey, SecretKey and RunnerName will
be set to a same one, which is common during testing.

The related s3cfg file will be generated in the "conf/" directory.

## Sample

e.g.

$ source setup.sh tester1 tester1 tester1 127.0.0.1:8000

$ tester1 ls

$ tester1 mb s3://111


or

$ source setup.sh tester2 127.0.0.1:8000

$ tester2 ls

$ tester2 mb s3://222
