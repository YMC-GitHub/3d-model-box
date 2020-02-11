-- -----------------   function   -------------
-- 随机颜色
fn randomColor arr =(
    RANDOM_NUM=1
    if( arr.count>1)then(RANDOM_NUM=random 1  arr.count) 
    return arr[RANDOM_NUM]
)
-- 随机图片
fn randomImage arr =(
    return randomColor arr
)	 

-- -----------------   config   -------------
PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-box"
TEXTURE_PATH=PROJECT_PATH+"\\dist\\texture\\"

-- -----------------   type   -------------
-- 标准材质
COLOR_ARR=#(yellow ,red)
S_NUM=1
E_NUM=COLOR_ARR.count --24
for m=S_NUM to E_NUM do meditmaterials[m] = standard()    
-- for m=1 to 24 do meditmaterials[m].diffuse = (random yellow red)
for m=S_NUM to E_NUM do (
    index = m as string 
    meditmaterials[m].name="standard-"+index
    meditmaterials[m].diffuse = (randomColor COLOR_ARR)
)
$.material = meditmaterials[random 1 E_NUM]  
showtexturemap $.material on

-- 卡通材质
COLOR_ARR=#(yellow ,red)
S_NUM=1
E_NUM=COLOR_ARR.count --24
for m=S_NUM to E_NUM do (
    index = m as string 
    meditmaterials[m] = inknpaint()
    meditmaterials[m].name="inknpaint-"+index
    meditmaterials[m].paint_color = (randomColor COLOR_ARR)
)
$.material = meditmaterials[random 1 E_NUM]  
showtexturemap $.material on


-- 贴图材质
IMAGE_ARR=#(TEXTURE_PATH+"animal.jpg",TEXTURE_PATH+"dice.jpg")
S_NUM=1
E_NUM=IMAGE_ARR.count --24
for m=S_NUM to E_NUM do (
 index = m as string 
meditmaterials[m] = standard()  
meditmaterials[m].name="texture-"+index
meditmaterials[m].diffusemap = bitmaptexture filename:(randomImage(IMAGE_ARR))
)	
$.material = meditmaterials[random 1 E_NUM]
showtexturemap $.material on

-- 导出到材质库
-- actionMan.executeAction 0 "50048"  -- Tools: Material Editor Toggle
-- actionMan.executeAction 2 "1069"  -- Material Editor: Get Material 
--  ...