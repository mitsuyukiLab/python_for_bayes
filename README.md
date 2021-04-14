# 中妻照雄「Pythonによるベイズ統計学入門」

[朝倉書店ウェブサイト](https://www.asakura.co.jp/books/isbn/978-4-254-12898-7/ "朝倉書店ウェブサイト")

---

- [中妻照雄「Pythonによるベイズ統計学入門」](#中妻照雄pythonによるベイズ統計学入門)
  - [PyMC4について](#pymc4について)
  - [正誤表（2021年1月22日改定）](#正誤表2021年1月22日改定)
  - [PythonとPyMCのインストール手順](#pythonとpymcのインストール手順)
    - [ステップ1: Anacondaのインストール](#ステップ1-anacondaのインストール)
    - [ステップ2: PyMCを実行する環境の設定](#ステップ2-pymcを実行する環境の設定)
  - [Jupyter Notebookを始める方法](#jupyter-notebookを始める方法)
    - [方法1: Anaconda NavigatorからJupyter Notebookを起動する方法](#方法1-anaconda-navigatorからjupyter-notebookを起動する方法)
    - [方法2: CLIから起動する方法](#方法2-cliから起動する方法)
  - [Pythonコード](#pythonコード)
    - [第2章](#第2章)
    - [第3章](#第3章)
    - [第4章](#第4章)
    - [第5章](#第5章)
    - [第6章](#第6章)

---

## PyMC4について

+ [公式発表（英語）](https://pymc-devs.medium.com/the-future-of-pymc3-or-theano-is-dead-long-live-theano-d8005f8a0e9b)
+ 本書5ページの脚注で言及しているTensorFlowを利用することを目指したPyMCの次期バージョン (PyMC4) の開発は中止された。
+ 今後は現行バージョンPyMC3の基盤であるTheanoをPyMCの開発チームが引き継ぎ、Theanoから分岐したTheano-PyMCとして開発を継続することが決まっている。
+ PyMC4への移行が停止されたことで、本書で使用しているPyMC3用のPythonコードは、細かい仕様の変更を除き、今後も継続して使用できる見通しである。

## 正誤表（2021年1月22日改定）

+ [ERRATA.md](ERRATA.md)

## PythonとPyMCのインストール手順

### ステップ1: Anacondaのインストール

1. 古いAnacondaがインストールされているときは、この[手順](https://docs.anaconda.com/anaconda/install/uninstall/)でアンインストールしておく。

2. Anacondaのインストーラー (Windows, macOS or Linux) を[ここ](https://www.anaconda.com/distribution/)から入手する.

3. ダウンロードしたインストーラーをダブルクリックして Anacondaのインストールを行う。

### ステップ2: PyMCを実行する環境の設定

`Anaconda Powershell Prompt` (Windows) あるいは`Terminal` (macos, Linux) を立ち上げて、

```IPython
(base) PS C:\Users\Thomas> conda create -n bayes jupyterlab seaborn spyder tqdm
```

とする。続けて

```IPython
(base) PS C:\Users\Thomas> conda activate bayes
```

とすると、以下のようにプロンプトが変わる。

```IPython
(bayes) PS C:\Users\Thomas>
```

続いてpipでPyMCをインストールする。

```IPython
(bayes) PS C:\Users\Thomas> pip install pymc3
```

もしpipでのインストールがうまくいかないときは

```IPython
(bayes) PS C:\Users\Thomas> conda install -c conda-forge pymc3
```

とする。

最後に

```IPython
(bayes) PS C:\Users\Thomas> python -m ipykernel install --user --name bayes --display-name "Python (Bayes)"
```

とすれば、環境の設定が完了する。

---

## Jupyter Notebookを始める方法

### 方法1: Anaconda NavigatorからJupyter Notebookを起動する方法

`Anaconda Navigator`を`Start Menu` (Windows) か `Launchpad` (macOS) から起動する。 あるいは、`Anaconda Powershell Prompt` (Windows) か `Terminal` (macOS, Linux) を立ち上げて、

```IPython
(base) PS C:\Users\Thomas> anaconda-navigator
```

としてもよい。そして、`Anaconda Navigator`で`Jupyter Notebook`の`Launch`ボタンをクリックする。

### 方法2: CLIから起動する方法

`Anaconda Powershell Prompt` (Windows) か `Terminal` (macOS, Linux) を立ち上げて、

```IPython
(base) PS C:\Users\Thomas> conda activate bayes
(bayes) PS C:\Users\Thomas> jupyter notebook
```

とする。

方法1あるいは方法2を実行すると、規定のブラウザーが立ち上がり、Jupyter Notebookが起動する。その画面の右上にある`New`のプルダウンメニューの中にある`Python (Bayes)`を選んでNotebookを開始すればよい。

**注意:** `New`のプルダウンメニューの中にある`Python 3`を選んでNotebookを開始すると、PyMCを使用することができない。

## Pythonコード

### 第2章

+ コード2.1 ベルヌーイ分布の成功確率の事前分布: [pybayes\_beta\_prior.py](python/pybayes_beta_prior.py)
+ コード2.2 ベータ分布のグラフ: [pybayes\_beta\_distribution.py](python/pybayes_beta_distribution.py)
+ コード2.3 ベルヌーイ分布の成功確率の事後分布と事後統計量: [pybayes\_conjugate\_bernoulli.py](python/pybayes_conjugate_bernoulli.py)
+ コード2.4 損失関数と区間推定の図示: [pybayes\_posterior\_inference.py](python/pybayes_posterior_inference.py)

### 第3章

+ コード3.1 ポアソン分布の&lambda;の事後分布と事後統計量: [pybayes\_conjugate\_poisson.py](python/pybayes_conjugate_poisson.py)
+ コード3.2 正規分布の平均と分散の事後分布と事後統計量: [pybayes\_conjugate\_gaussian.py](python/pybayes_conjugate_gaussian.py)
+ コード3.3 回帰係数と誤差項の分散の事後分布と事後統計量: [pybayes\_conjugate\_regression.py](python/pybayes_conjugate_regression.py)
+ コード3.4 ポアソン分布とガンマ分布の例: [pybayes\_poisson\_gamma.py](python/pybayes_poisson_gamma.py)
+ コード3.5 正規分布の例: [pybayes\_gaussian\_distribution.py](python/pybayes_gaussian_distribution.py)
+ コード3.6 逆ガンマ分布とt分布の例: [pybayes\_invgamma\_t.py](python/pybayes_invgamma_t.py)

### 第4章

+ コード4.1 回帰モデルのベイズ分析(自然共役事前分布): [pybayes\_mcmc\_reg\_ex1.py](python/pybayes_mcmc_reg_ex1.py)
+ コード4.2 回帰モデルのベイズ分析(正規分布 + 逆ガンマ分布): [pybayes\_mcmc\_reg\_ex2.py](python/pybayes_mcmc_reg_ex2.py)
+ コード4.3 回帰モデルのベイズ分析(重回帰モデル): [pybayes\_mcmc\_reg\_ex3.py](python/pybayes_mcmc_reg_ex3.py)
+ コード4.4 回帰モデルのベイズ分析(ラプラス分布 + 半コーシー分布): [pybayes\_mcmc\_reg\_ex4.py](python/pybayes_mcmc_reg_ex4.py)
+ コード4.5 ロジット・モデルのベイズ分析: [pybayes\_mcmc\_logit.py](python/pybayes_mcmc_logit.py)
+ コード4.6 プロビット・モデルのベイズ分析: [pybayes\_mcmc\_probit.py](python/pybayes_mcmc_probit.py)
+ コード4.7 ポアソン回帰モデルのベイズ分析: [pybayes\_mcmc\_poisson.py](python/pybayes_mcmc_poisson.py)

### 第5章

+ コード5.1 ノイズを含むAR(1)過程: [pybayes\_mcmc\_ar1.py](python/pybayes_mcmc_ar1.py)
+ コード5.2 使用電力量のトレンドと季節変動: [pybayes\_mcmc\_decomp.py](python/pybayes_mcmc_decomp.py)
+ コード5.3 確率的ボラティリティ・モデル: [pybayes\_mcmc\_sv.py](python/pybayes_mcmc_sv.py)
+ コード5.4 時系列データのプロット: [pybayes\_timeseries\_data.py](python/pybayes_timeseries_data.py)
+ ドル円為替レート日次データ: [dollaryen.csv](python/dollaryen.csv)
+ 電灯電力需要実績月報・用途別使用電力量・販売電力合計・10社計: [electricity.csv](python/electricity.csv)

### 第6章

+ コード6.1 正規分布に対するギブズ・サンプラー: [pybayes\_gibbs\_gaussian.py](python/pybayes_gibbs_gaussian.py)
+ コード6.2 回帰モデルに対するギブズ・サンプラー: [pybayes\_gibbs\_regression.py](python/pybayes_gibbs_regression.py)


## How to use Dockerfile

GitとDockerがインストールされていることを前提とする

```sh
$ git clone https://github.com/mitsuyukiLab/python_for_bayes.git
$ cd python_for_bayes
$ docker build -t rinko2021 .
$ docker run -it -v $(pwd)/python:/workspace -w /workspace rinko2021
```
