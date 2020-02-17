
-- -----------------   config   -------------
PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-box"
MAX_PATH=PROJECT_PATH+"\\dist\\model\\"
MODE_NAME="box"

-- -----------------   type   ---------------
-- 保存为.max
--MAX_FILE="test.max"
MAX_FILE=MODE_NAME+".max"
file = MAX_PATH + MAX_FILE
actionMan.executeAction 0 "40007"  -- File: Save File As
saveMaxFile file
-- 导出为.fbx
--MAX_FILE="test.fbx"
MAX_FILE=MODE_NAME+".fbx"
file = MAX_PATH + MAX_FILE
exportfile file #noPrompt selectedOnly:true using:FBXEXP
