## FMPyに対しScheduled Execution確認のための修正。

### 1. 自身のFMPyのインストール方法
FMPyを展開したディレクトリ内で、

```
python -m pip install --upgrade --no-deps .
```

参考)

https://github.com/CATIA-Systems/FMPy/blob/master/docs/hacking.md

利用するPython等は、FMPyのインストール・実行についての情報は、公式のFMPyのgithubを参照。

***
### 2. SEモデルの実行方法

fmpyによるSEを使うFMUの実行は、GUIではなくCLIを使用。
```
python -m fmpy --fmi-logging simulate ディレクトリ名/Reference-FMUs/build/dist/Clocks.fmu
```
***
### 3. SEに対応したモデル
- SEモデルの実行では、SEに対応したFMPyとSEに対応したモデル（FMU）が必要。
- SEに対応するFMUとして、Reference-FMUs内のClocksを使用。Clocksが使用する関数等についてSEに対応するよう修正。
- 評価用のFMU（Clocks）を以下の中で作成

  https://github.com/n-yoshimatsu/Reference-FMUs
