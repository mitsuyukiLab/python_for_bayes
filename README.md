# 中妻照雄「Pythonによるベイズ統計学入門」

[朝倉書店ウェブサイト](https://www.asakura.co.jp/books/isbn/978-4-254-12898-7/ "朝倉書店ウェブサイト")

---

## 正誤表

+ [ERRATA.md](https://github.com/nakatsuma/python_for_bayes/blob/master/ERRATA.md)

## Dockerコンテナ上での動かし方

Gitと[Docker](https://docs.docker.com/desktop/#download-and-install)がインストールされていることを前提とする

```sh
$ git clone https://github.com/mitsuyukiLab/python_for_bayes.git
$ cd python_for_bayes
$ docker build -t rinko2021 .
$ docker run -it -v $(pwd)/python:/workspace -w /workspace rinko2021
```

あとは、Dockerコンテナ上のカレントディレクトリにPythonファイルがあるのでそれを実行すれば良い

例えば以下のように実行する

```sh
$ python pybayes_mcmc_reg_ex1.py
```

## Dockerを利用せずに環境構築をする

本家の[README.md](https://github.com/nakatsuma/python_for_bayes#python%E3%81%A8pymc%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E6%89%8B%E9%A0%86)を参照のこと


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
