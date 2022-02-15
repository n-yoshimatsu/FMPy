## FMPyに対しScheduled Execution確認のための修正。

1. 自身のFMPyのインストール

- FMPyを展開したディレクトリ内で、

```
python -m pip install --upgrade --no-deps .
```

- 参考）

  - https://github.com/CATIA-Systems/FMPy/blob/master/docs/hacking.md

***

2. SEモデルの実行

```
python -m fmpy --fmi-logging simulate ディレクトリ名/Reference-FMUs/build/dist/Clocks.fmu
```

- SEモデルの実行では、SEに対応したFMPyとSEに対応したモデルが必要。
