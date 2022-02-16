## FMPyに対しScheduled Execution確認のための修正。

### 1. 自身のFMPyのインストール方法
FMPyを展開したディレクトリ内で、

```
python -m pip install --upgrade --no-deps .
```

参考)

https://github.com/CATIA-Systems/FMPy/blob/master/docs/hacking.md

***
### 2. SEモデルの実行方法

fmpyによるSEを使うFMUの実行は、GUIではなくCLIを使用。
```
python -m fmpy --fmi-logging simulate ディレクトリ名/Reference-FMUs/build/dist/Clocks.fmu
```
***
### 3. SEに対応したFMU
- SEモデルの実行では、SEに対応したFMPyとSEに対応したモデルが必要。
- FMUのモデルは、Reference-FMUs内のClocksを使用。Clocksが使用する関数等についてSEに対応するよう修正。
- 評価用のモデルを以下の中で作成
  https://github.com/n-yoshimatsu/Reference-FMUs
