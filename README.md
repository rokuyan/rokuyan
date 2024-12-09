# **README.md**

## **自己紹介**

私が自身の価値を最も発揮できるのは企画を含む 0 → 1 フェーズでの開発だ。

- Python3 がコアスキル

- 事業企画、および非開発者の要求定義の補助からの高速な設計・実装。

- ビジネスサイドへの企画のプレゼンテーション, およびフォロー等

- 現場の要求定義から設計と検証を並行して行う、フロントエンドファーストな可視化スキル

- 並列、非同期処理を活用した数千万 〜 数億件以上の大規模クエリを伴う構造化データの高速な演算処理。

- 大規模なトランザクションを意識したキューイングを含めた設計・実装

- Redis, ElasticSearch 等の Document Storage アーキテクチャを活用した高速な処理を必要とするアプリケーションの開発

開発者以外とのコミュニケーションも積極的に行い、専門用語をなるべく用いず、わかりやすいコミュニケーションを常に意識している。

開発者としてはバックエンド開発をコアスキルとし、フロントエンドやインフラ, 機械学習のモデリングにも幅広いスキルを有している。

## **直近 3 年間のハイライト**

- **A/B テスト可能な高負荷処理に耐えうる EC サイトの検索リランキングエンジン API の設計・実装**

    高負荷で別 API がダウンしても耐えうる EC サイトの検索システムをチームで構築した。

    API へのリクエスト制御として Feature toggle, サーキットブレーカーを機能要件とし、ユーザの固有 id によってリクエスト先の API を変更する仕様とした。

    BFF で取得したデータは、キューと取り込みバッチを用いて DB に取り込み後、ETL(AWS Glue) を用いて BigQuery へデイリーで送信し、データの集計・分析が可能な環境を構築した。

    A/B テストの対象として複数 ML モデルを用いたリランキングアプリケーションとし、CTR を最大化するロジックの探索が行える仕組みとした。

    | 項目 | 値 |
    | -- | -- |
    | 設計のみ担当 | BFF Feature toggle, サーキットブレーカー制御、キューイングと周辺バッチ |
    | 設計・実装を担当 | 効果検証計画, ML API, ML モデリング, ETL |

- **最大 13 億レコードの複数テーブルデータの探索を高速化するアプリケーションの設計・実装**

    複数テーブルにまたがって重複データを含む大量のデータがあり、その中からデータの探索を行うアプリケーションがあった。

    当初検索には 5 秒以上の時間がかかっており、カスタマーからの評判が良くなかった。

    検索要件で、全文検索や分析の要件がなかったため、 Redis を用いてインデックスを構築し、高速検索可能な設計へと変更した。

    その結果、アプリケーション側からの検索にかかる時間が平均 5 秒以上必要だった時間を 0.5 秒以内に短縮することに成功した。

- **CTI(IP 電話が可能なシステム)に対する、 OpenSearch を用いた分析用アプリケーションの設計・実装**

    架電データを大量に持つアプリケーションで、 OpenSearch を用いてあいまい検索を行えるシステムを設計・構築した。

    ビジネス要件として、架電対称の業界、規模、あいまい検索を行う必要があり、その結果を機械学習を用いて最適な架電先を時間ごとに出力する必要があった。

    OpenSearch を用いて検索用のインデックスを作成し、あいまい検索を含めた設計・実装を行った。

    機械学習は月に 1 度バッチを用いて実行し、最適な架電先の探索を行えるようにした。

- **バックオフィス業務の自動化アプリケーションの構築**

    バックオフィスの営業事務担当が毎日平均 90 分間(当初 7 クライアント)かかっていた報告業務を自動化するバッチを設計・構築した。

    当初 Excel で CTI の架電結果を貼り付け、クライアントごとに請求費用や、実際の結果の分析結果を作成していた。

    この業務をすべてバッチで Excel 作成 ～ メール配信までを自動化した結果、大幅な人件費の削減に成功した。

## **開発技術、およびコミュニケーションにおける自身の強み**

### **コミュニケーション**

- 言語化が難しい要望から企画・設計・初期デプロイまでの導線を引き形にすること

- 要求定義から詳細設計までの正確かつ迅速な落とし込み

- サーバー費用からのエンドユーザへのサービスの価格設定等の企画

- 非開発者を含む発注者(社内外)との丁寧で円滑なコミュニケーション

### **スキル**

- 要求定義、アーキテクチャ設計、要件定義、基本設計、詳細設計等の一連のプロセス管理

- 非同期, および並列処理への理解

- Docker を用いたコンテナ操作、ビルド、デプロイに関する知識

- Terraform を用いた高速なインフラ構築技術

- GitHub Actions を用いた CI/CD の構築技術

- AWS を用いたアーキテクチャ設計・実装技術

- バックエンド / フロントエンド の横断的な開発知識

- 構造化データを用いた機械学習アプリケーションのデータ前処理・設計・開発の知識

- OpenAI(ChatGPT/GPT3.5-turbo) API を用いた WEB アプリケーションの設計・開発・予算管理

- 開発チームの社内ルールの制定

## **実務レベルで使用可能な言語など**

- **Python3**

    Django, FastAPI, Flask

- **JavaScript / TypeScript**

    Next.js, React

## **過去に実務で使用したフレームワーク・ライブラリの例**

| 分類 | フレームワーク・ライブラリ|
| ---- | ---- |
| JavaScript/TypeScript | Google App Script, Node.js, React, Next.js |
| Design | bootstrap, MaterialUI, TailwindCSS |
| AWS | Route53, S3, CloudWatch, EC2, RDS, AWS Lambda, CloudFront, ECS, ElasticCache, SQS, Batch, Glue |
| Infrastructure | Terraform, FTP server, Docker,  Nginx, Apache, Elastic Search |
| CI/CD | GitHub Actions |
| Database | MySQL, PostgreSQL, MongoDB |
| DataWareHouse | Google Big Query |
| ETL | Apache Spark(AWS Glue) |
| Document Storage | Redis, ElasticSearch |
| Python3 | asyncio, aiohttp, numpy, pandas, polars, scikit-learn, Django, Flask, FastAPI, Transformers, PyTorch, keras, cuda, selenium |
| Go | Echo |
| OS | Debian, Ubuntu, Amazon Linux2(CentOS), MacOS, Windows |

<p align="center">
    <img alt="my skills" src="https://skillicons.dev/icons?theme=dark&perline=8&i=python,go,django,flask,fastapi,react,postgres,mysql,redis,docker,bash,js,html,css,jquery,nodejs,typescript,bootstrap,tailwind,mui,webpack,aws,git,github,linux,pytorch,selenium,postman,vscode,vim" />
</p>

### **開発ツール等**

|  分類  |  ツール名  |
| ---- | ---- |
| エディター | VSCode (vim) |
| ターミナル | bash, zsh, Guake |
| 設計ツール | drawio |
| コミュニケーションツール | Google Meets, Slack, Zoom, LINE, Chatwork, Messenger, Discord, TypeTalk 等|
| プロジェクト管理 | Jira, Notion, Trello, Backlog, GitHub 等 |
| ドキュメント管理 | Confluence, Notion |
| CI/CD | GitHub Actions |
| IaC | Terraform |
| OS | Debian, Ubuntu, Amazon Linux3 等 |

## **経歴**

### **2024 年 ~ 現在 (テックリード / 正社員 | 同時並行で個人で会社経営)**

2024 年 3 月からテックリードとして勤務。設計 ~ 開発まで幅広く担当

- EC サイトの基幹システムのリプレイス案件の PMO 兼 PL を担当

- EC サイトの検索エンジンの設計・開発を担当(別案件)

- 使用言語は `Python` 中心

- 使用フレームワークは `Django`

バックエンド ~ インフラを中心に担当

### **2022 年 ~ 2024 年(WEB エンジニア / 正社員 | 同時並行で個人で会社経営 )**

2022 年 7 月から WEB エンジニアとして勤務。

- 1 人目の開発部立ち上げメンバーとして、運用規定等の策定・文書化を実施

- 大規模な構造化データの解析、及びそのデータの可視化を行う WEB アプリケーションの開発を担当。

- OpenAI を用いた業務効率化用 WEB アプリケーションの開発を担当。

- 事業買収したシステムとの統合、及び新規事業開発業務(2 名体制)

- 社内向けの RPA アプリケーションの開発。(API 等を用いて特定業務を自動化等)

- 使用言語は `Python3`, `TypeScript`, `JavaScript`。

- 使用したフレームワークは `Flask`, `React`, `Django`, `FastAPI`。

インフラ、バックエンド、フロントエンドの全てを担当

### **2020 年 ~ 2021 年: 個人で株式会社を起業 (本社: 奈良県)**

自社サービスの開発に取り組むとともに複数の業務委託案件に携わった。

- Django, React を用い、WEB アプリケーションを開発。

- Echo(Go) を用いたサーバーサイドレンダリングのアプリケーションを開発。

- 複数のプロキシを用いた非同期通信クローリングアプリの開発。

- Windows 向け小規模アプリケーションを開発。

- 使用言語は `Pyhon3`, `Go`, `JavaScript`。

- 使用したフレームワークは `Django`, `React`, `Echo`

インフラ、バックエンド、フロントエンドの全てを担当

### **2020 年: 新卒入社の人材紹介会社を自己都合にて退職。フリーランスに転身。**

退職後はフリーランスとして、クローラーの作成、 Chrome Extentions の開発等の小規模なアプリケーションの開発代行を行う。

- 使用言語は `Python3`, `JavaScript` 。

- その他、採用代行やアウトバウンドコールの代行の案件を行う。(人事/広報領域がメイン)

### **2017 年: 人材紹介会社に新卒入社。営業職(インサイドセールス)として勤務**

私のキャリアの入口は営業職だ。

毎日 300 ~ 350 件の法人へのアウトバウンドコールと、各種事務作業(スカウトや契約書締結、日程調整等)を行った。

- 業界ごとのニーズや、求人倍率、業界の将来の課題を自身なりに把握。

- インサイドセールスチームの立ち上げ時期を担当した。

- 休日の余暇時間を用いて `Python3` を用いて営業リスト作成のためのクローラーの作成し、実務でも使用。

- 休日の余暇時間に `Hugging Face` 等を独学で学び業務に活かそうと試みた。(当時は GPT-2 が最新 / 達成できず)

### **2016 年: 防衛大学校 情報工学科を卒業**

- 大学の卒業論文ではデータ構造とアルゴリズムを専攻し、符号化の新規アルゴリズム開発について重点的に学んだ。

- 配属は陸上自衛隊予定だった。

- 使用言語は `C` 。

## **連絡先等**

良い求人がありましたら、以下にご連絡いただけますと幸いです。

<p align="center">
    <a href="https://www.linkedin.com/in/rokuro-ogita-9553a917b/">
        <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white">
    </a>
    <a href="https://discordapp.com/users/979753282710945792">
        <img src="https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white">
    </a>
    <a href="https://m.me/RokuroOgita">
        <img src="https://img.shields.io/badge/Messenger-00B2FF?style=for-the-badge&logo=messenger&logoColor=white">
    </a>
</p>

<!--
<a href="https://line.me/ti/p/sqMIBlZLow">
    <img src="https://img.shields.io/badge/Line-00C300?style=for-the-badge&logo=line&logoColor=white">
</a>
-->
