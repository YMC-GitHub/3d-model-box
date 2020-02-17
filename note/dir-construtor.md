# dir construtor

## project dir
```sh
tree . -L 1 | sed "s/^\`/|/"
```

```
|-- LICENSE
|-- README.md
|-- dist
|-- note
|-- screenshot
|-- scripts
|-- src
```

## src dir

```sh
tree src -L 1 | sed "s/^\`/|/"
```

```
src
|-- box-export.ms #export box model to .max, .fbx
|-- box-mat.ms #make box material
|-- box-max.ms #make box model
|-- box-uvw.ms #make box model uvw
```

## dist dir

```sh
tree dist -L 3 | sed "s/\`/|/"
```

```
src
dist
|-- material # model material
|   |-- animal
|   |   |-- animal.mat
|   |   |-- dice.mat
|   |-- animal.mat
|   |-- dice.mat
|   |-- test.mat
|-- model # .max and .fbx model file
|   |-- box.FBX
|   |-- box.max
|-- texture # model texture
|   |-- animal
|   |   |-- five.png
|   |   |-- four.png
|   |   |-- one.png
|   |   |-- six.png
|   |   |-- tree.png
|   |   |-- two.png
|   |-- animal.jpg
|   |-- dice.jpg
|   |-- dice.psd
|   |-- test.jpg
|-- uv-img
    |-- box-white.jpg
    |-- box.jpg
    |-- test.jpg
```
