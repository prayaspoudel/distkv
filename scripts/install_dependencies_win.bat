:: Install DRPC.

SET DRPC_REPOSITORY_URL="https://github.com/distkv-project/drpc.git"
SET DRPC_COMMIT_ID="1fb9f1b15d4c768e5e1548da416d809cdfe5f2ed"

git clone %DRPC_REPOSITORY_URL% drpc
pushd drpc
git checkout %DRPC_COMMIT_ID%
mvn clean install -DskipTests
popd
rd /S /Q drpc

echo Drpc RPC was installed successfully.
echo All dependencies were installed successfully.

pause
