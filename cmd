Change password
https://www.open-deplas.ext.hitachi.co.jp/account/password
Clone:
git clone -c core.symlinks=true -b develop ssh://git@git.hv-vn.com:2222/hvn-projects/itom-dx-tool/dx-tool.git

Setup env:
Get gitlab.itoi-hvn.jp1itoi.com from computer that in company
Paste into C:user/go/src

Get dependency:
go get -v -d ./...

Khi có thêm thư viện mới:
go mod tidy

Set env variable (>=v1.17):
GO111MODULE = off

Using command line instead of PowerShell.

Setting host of Windows
Goto C:/Windows/System32/drivers/etc/
Open hosts file, and paste 
      172.18.4.33 app.itom-dx-tool.local keycloak.itom-dx-tool.local vault.itom-dx-tool.local
      172.18.4.33 itsm.itom-dx-tool.local chat.rocketchat.local portal.itom-dx-tool.local vault.itom-dx-tool.local eclipse.itom-dx-tool.local vault.itom-dx-tool.local
      172.18.4.149 gitlab.itom-dx-tool.local
      172.18.4.33 vault.itom-dx-tool.local secret.itom-dx-tool.local


Learn
01/09/2021
- Cursor (*) in Go
- Gin web framework

Remote computer in building:
hvnhcvter04.cybersoft.vn
using gcs account


Login database:
Address: http://172.18.4.33:2345/login?next=%2Fbrowser%2F
Change to: http://172.18.4.149:2345/login?next=%2Fbrowser%2F
Change to in code: 172.18.15.105
Account: admin@local.domain/admin


======================================================
local token:
eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJjQlRxN1F1aFZWVEJBQ056V3Jud3Q3aERha1FjMGVDdzN3R0dlZTRDczBnIn0.eyJleHAiOjE2Mjc0NjU4ODMsImlhdCI6MTYyNzQ2NTgyMywianRpIjoiYTNlZDQ3NDktNDE3Zi00NzI2LThkM2ItNTZlNDM5Y2U5MDBmIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5pdG9tLWR4LXRvb2wubG9jYWwvYXV0aC9yZWFsbXMvbWFzdGVyIiwic3ViIjoiZDRiMWRjNDEtZDQ4YS00ZGZiLTljY2UtODU4MmI3MGYxODk3IiwidHlwIjoiQmVhcmVyIiwiYXpwIjoiYWRtaW4tY2xpIiwic2Vzc2lvbl9zdGF0ZSI6IjBlOWIzNWIwLTcxMzQtNGVhYy1hMzc4LTU1OWQ5Nzk5MThjYiIsImFjciI6IjEiLCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInByZWZlcnJlZF91c2VybmFtZSI6ImFkbWluIiwibG9jYWxlIjoiZW4ifQ.WH6zT9WJtK9mxfyyL8lUes7C7z-ZT-U-CMSlauG-HvN-sPGCPHCZQoXBEMgZcTdXBZp38E2C1t4JQFCAo-TKFk4iwQoSfxX9HPnBOlY3aN6eqWCdA4OoKRPPZNj6mzFAYn4sFcWtLjc2X7UuiIG5Hj-T1GnMFfgoJjMeTHZjiljOFLB4na4k00a4-u8_z3qhvCyGuvgoPtCYQz6wS-2vMTYDV6zSZJ9CKCEFYa4EeyoN1auC8kHNNbSPVT2swz9oL84oxHEWQSCvv4iiL0NDEg1NdyUhLaglJIQEw5CrzqBpAoNJshVhp7aqAlcUtQSd1LnIMZnNHDy4kvufGai_5Q

eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InFwenZGek4wdEpxVjJNX3k3cTBBd09GVUtPWUlNMlE0TDNuTUNZay1fY0UifQ.eyJleHAiOjE2MjAzMTMwNzEsImlhdCI6MTYyMDI4NDI3MSwiYXV0aF90aW1lIjoxNjIwMjg0MjcxLCJqdGkiOiI1ZjNkMTUxYS00NzgxLTQ4OWMtYTljNy0xNDg4NDg3OTUzOTMiLCJpc3MiOiJodHRwczovL2tleWNsb2FrLml0b20tZHgtdG9vbC5sb2NhbC9hdXRoL3JlYWxtcy9pdG9pIiwiYXVkIjpbIm9hdXRoMi1wcm94eSIsImFjY291bnQiXSwic3ViIjoiMzU2ZjI1MzItYjkxMy00YzZjLTg2YzQtNmRkYzczYWRhYjM0IiwidHlwIjoiQmVhcmVyIiwiYXpwIjoib2F1dGgyLXByb3h5Iiwic2Vzc2lvbl9zdGF0ZSI6IjgwYTEyOWE2LTBiZmQtNGE2MS1iNmJkLWFjNmM4OTM3NDcyYiIsImFjciI6IjEiLCJhbGxvd2VkLW9yaWdpbnMiOlsiaHR0cHM6Ly9hcHAtcHJveHkuaXRvbS1keC10b29sLmxvY2FsIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgZW1haWwgcHJvZmlsZSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiTWFpbnRlbmFuY2UgU0UxIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFpbnNlIiwiZ2l2ZW5fbmFtZSI6Ik1haW50ZW5hbmNlIiwiZmFtaWx5X25hbWUiOiJTRTEiLCJlbWFpbCI6Im1haW5zZUBodm4uY29tIiwiYWNscyI6WyJhY2xuYW1lIl19.O6_3LHE1t9ZbQPKbnWv51yY99StIOtUDkdqmljIAWqvmnyh2hpulpewURBMm6Mvz84PMgOf_4qVHk90K-QCjusZgNGZ_ZfULJ7w3w4A2f0Nwt12pidWKRYhhYKL6pqrHCTn58JeU7zckZg6a_M9lNts93JRzliWvk9T57u5K49XpubFsW3p5di_0ocAeyagvJ9RNPOVHms5cOL8DXbn3Pjj1imp4gmKFEqZVAkmKQUzpe0_BQfgC7yEFCBaMDY6GUzVe5vrkq6QY8-wIvepIvVszKCUMTPHUv4H4PluSkgis54oa0jk_oJLTpTjexDQizxqNPmrOsCKDTnfnYABP5g
======================================================


======================================================
COMMAND AWS
======================================================
Open cmd: 
ssh itoi-thien@172.18.4.33   account: itoi-thien/gcsvn123
Switch cluster:
aws eks update-kubeconfig --name <........> --profile itoi-deploy

List clusters:
aws eks list-clusters --profile itoi-deploy

Get contexts: 
kubectl config get-contexts

Get namespace:
kubectl get ns

Get pod:
kubectl -n [..namespace..] get pod
\
Access pod:
kubectl -n [..namespace..] exec -it [..name pod..] -- bash

AWS:
aws eks list-clusters --profile itoi-deploy

Change cluster:
aws eks update-kubeconfig --name hvn2-schema --profile itoi-deploy

====================
POSTGRES COMMAND
====================
psql -U[..username..] [user]
Eg1: psql -Uhasura hasuradb
pass: hasura
Eg2: psql -Udxconsole dxtool_db
pass: dxconsole
-> Pass like username

List table:
\d
\dt itoi_system.

Out:
exit

====================
Get token from gitlab
====================
curl -ik -X POST "https://keycloak.itom-dx-tool.local/auth/realms/opsi/protocol/openid-connect/token" -H "Content-Type: application/x-www-form-urlencoded" -d "username=anhnp&password=123&grant_type=password&client_id=alb&client_secret=e4174ba0-c7d2-444e-9e66-5fa18be4f51d



====================
LOG COMMAND
====================
Get pod:
kubectl -n [..namespace..] get pod | grep [..wildcard-namespace..]

Get log from pod:
kubectl -n [..namespace..] logs [..name-pod..] --tail 100

====================
GO TEST COMMAND
====================
TEST UT - dx-common
go test -coverprofile coverage.out -coverpkg ./orchestrators/... ./tests/...        
go tool cover -html coverage.out -o coverage.html

TEST IT - dx-test-api
npm test ./system-config-document.test.js

=====================
IMPORT EXPORT GITLAB
=====================
kubectl -n [hvn-team3-01-service] cp [system-repo-stand.tar.gz] [gitlab-task-runner-76c45bc8cc-lrlv7]:/tmp/

-> copy file vào pod của gitlab-task-runner


kubectl exec -i [gitlab-task-runner-76c45bc8cc-lrlv7] -n [hvn-team3-01-service] -- sh -c "gitlab-rake 'gitlab:import_export:import[root, system, [system-standard], /tmp/[system-repo-stand.tar.gz]]'"

-> import project

Thien Dinh chỉnh mấy cái in đậm update cho đúng là import dc


===================
REDIS
===================
ssh gcsadmin@172.18.4.33
gcsvn123

Install redis-cli:
npm install -g redis-cli

Access Redis local on Sever 149:
rdcli -h 172.18.4.149

Switch DB number: select <db_number>
select 6

Search keys: keys <search_pattern>
keys *
keys *core:Apps*

Set:
set <key> <value>
Get:
get <key>
Delete:
del <key>

flushall
xóa tất cả

 

===========================
CHANGE ROLE ADMIN FOR USER
===========================
kubectl -n mgt-qc-b147-service exec -it gitlab-sidekiq-all-in-1-v2-799fcf5448-zbrx2 bash

cd /srv/gitlab/bin

./rails console -e production

u= User.find_by_username('user19');

u.admin = true;

u.save();

===========================
CHANGE CONFIG VARIABLE 
===========================
kubectl -n team3-7492-service edit cm dxconsole-app-config

:wq (save and quit)

kubectl -n team3-7492-service delete pod dxconsole-.........



===========================
CALL API INTERNAL
===========================
the first, exec -it pod

curl "http://dxconsole:80/internal/init" -X GET




===========================
PORT FORWARD 
===========================
kubectl port-forward -n team3-01-datastore pods/postgresql-postgresql-0 1997:5432 --address 0.0.0.0

Forward port 5432 sang máy 172.18.4.33 bằng port 1997


===========================
CHANGE DXCONSOLE BUILD FOR DEPLOYMENTS
===========================
kubectl -n team3-02-serice edit deployments dxconsole




===========================
CHANGE PROPERTIES ENVIROMENT
===========================
kubectl -n group4-qc-service get cm
kubectl -n group4-qc-service edit cm dxconsole-app-config -o yaml

































======================================--------------------------------------------------------------------------------
       COMMAND LINE
======================================--------------------------------------------------------------------------------

Clear cache:
UAT:
kubectl -n flexba-cool exec -it redis-master-0 -- redis-cli -c FLUSHALL
QC:
kubectl -n flexba-cool-pnr-qc exec -it redis-master-0 -- redis-cli -c FLUSHALL 


Get pod, svc:
kubectl -n flexba-cool get pod

Get node:
kubectl get node

Log:
kubectl -n flexba-cool logs -f flexba-cool-sale-595cc74cb-ddv89 flexba-cool-sale


Config haproxy:
ssh <host>
sudo firewall-cmd --permanent --add-port=8800/tcp
sudo firewall-cmd --permanent --add-port=443/tcp
sudo firewall-cmd --reload
sudo firewall-cmd --list-all

SSH:
ssh gcsadmin@192.168.0.32
 








------------------------------------------------------------------------------------------------------------------------
      DEPLOY SERVER - STEP BY STEP
------------------------------------------------------------------------------------------------------------------------

step1: đánh tag

https://extgit.cybersoft-vn.com/flexba/flexba-cool-pnr/flexba-cool-backend/-/branches
https://extgit.cybersoft-vn.com/flexba/flexba-cool-pnr/flexba-cool-backend/-/tags

Step 2: Login jenkin and build: http://fatadev.cybersoft.vn:8080/jenkins/job/FlexBACool-PNR/job/flexba-cool-pnr-container-release/
Inscrease PROJECT_VERSION
Change BACKEND_BRANCH by tag was created

Step 3:
Login WinSCP
Copy from:
\\cybersoft.vn\gcs\GHOSVN\DM\FlexBA-Cool\RM\PNR-FlexBA-Release
to:
/data/projects/flexba-cool-pnr-deploy/ 

dùng: user name: gcsadmin  pass: gcsvn123

 

- Chạy lệnh:

sudo docker login 192.168.0.83:8443
nhập User: admin, pass: Harbor12345 (phai dung gcsadmin/gcsvn123)

- chạy lệnh:
sudo sh docker-import.sh 192.168.0.83:8443/flexba


- Deploy: 

Vào máy Jenkins của khách hàng: http://192.168.0.83:8080/job/flexba-devops/

admin/admin

inscrease PROJECT_VERSION
choose DEPLOY_ENVIRONMENT
check service











------------------------------------------------------------------------------------------------------------------------
      GIT - COMMAND
------------------------------------------------------------------------------------------------------------------------
git reset --hard $COMMIT
