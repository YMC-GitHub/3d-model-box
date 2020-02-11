boxGood = box()
select boxGood

-- 展开
modPanel.addModToSelection (Unwrap_UVW ()) ui:on
$.modifiers[#unwrap_uvw].unwrap.move ()
$.modifiers[#Unwrap_UVW].texMapList.count = 0
$.modifiers[#Unwrap_UVW].texMapIDList.count = 0
$.modifiers[#Unwrap_UVW].baseMaterial_list.count = 1
$.modifiers[#Unwrap_UVW].baseMaterial_list[1] = undefined
$.modifiers[#Unwrap_UVW].texMapList.count = 0
$.modifiers[#Unwrap_UVW].texMapIDList.count = 0
$.modifiers[#Unwrap_UVW].texMapList.count = 1
$.modifiers[#Unwrap_UVW].texMapIDList.count = 1
$.modifiers[#Unwrap_UVW].texMapList[1] = Checker ()
$.modifiers[#Unwrap_UVW].texMapIDList[1] = -1
-- 展开成6个连续的面--十字架
-- 断开线
subobjectLevel = 2
boxGood.modifiers[#unwrap_uvw].unwrap6.setSelectedGeomEdgesByNode #{16..17} $
boxGood.modifiers[#unwrap_uvw].unwrap6.setSelectedGeomEdgesByNode #{5, 16..17} $
boxGood.modifiers[#unwrap_uvw].unwrap6.setSelectedGeomEdgesByNode #{5, 7, 16..17} $
boxGood.modifiers[#unwrap_uvw].unwrap6.setSelectedGeomEdgesByNode #{1, 5, 7, 16..17} $
boxGood.modifiers[#unwrap_uvw].unwrap6.setSelectedGeomEdgesByNode #{1, 3, 5, 7, 16..17} $
boxGood.modifiers[#unwrap_uvw].unwrap6.setSelectedGeomEdgesByNode #{1, 3, 5..7, 16..17} $
actionMan.executeAction 2077580866 "40013"  -- All Commands: Break Selected Vertices
subobjectLevel = 2
-- 剥离线
-- gui-快剥
-- 松弛线


--让模型“呈现出方格像素块”
$.modifiers[#unwrap_uvw].unwrap.setCurrentMap 1
-- 调整大小、位置、角度
$.modifiers[#unwrap_uvw].unwrap.move ()
$.modifiers[#unwrap_uvw].unwrap.rotate ()
$.modifiers[#unwrap_uvw].unwrap.scale ()

-- 导出uv图片
/*
actionMan.executeAction 2077580866 "40194"
$.modifiers[#Unwrap_UVW].renderuv_width = 4000
$.modifiers[#Unwrap_UVW].renderuv_height = 4000
$.modifiers[#unwrap_uvw].unwrap5.renderUV ""
*/

-- 在uv图片上绘图（eg. ps）
-- ...

-- 用uv图片做材质
/*
PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-box"
TEXTURE_PATH=PROJECT_PATH+"\\dist\\texture\\"
file =TEXTURE_PATH+  "animal.jpg"
myMat= Standardmaterial ()
myMat.diffuseMap = Bitmaptexture fileName:file
$.material = myMat

file =TEXTURE_PATH+  "dice.jpg"
myMat = Standardmaterial ()
myMat.diffuseMap = Bitmaptexture fileName:file
$.material = myMat
*/



--curd uv
--c
--modPanel.addModToSelection (Unwrap_UVW ()) ui:on
--u
--actionMan.executeAction 2077580866 "40006"  --重置
--r
--d
/*
deleteModifier boxGood 1
delete boxGood
*/
