# 🛒 ShopStream — Daily Need Shop Store Data Engineering Pipeline

> **Status:** 🚧 **Under Active Development (Stage 1 — Foundation & Schema Design)** 🚧  
> *This repository is currently being built. New modules, ingestion pipelines, and transformations are actively being added.*

---

## 📌 Project Overview

**ShopStream (Daily Need Shop Store)** is an end-to-end data engineering platform designed to ingest, process, and analyze retail transactions, customer interactions, and inventory metrics for a daily-needs store.

The goal of this project is to build a robust, production-grade data pipeline:
- **Raw Layer:** Secure staging of raw customer, product, and transaction streams.
- **Processing Layer:** Cleanse, validate, and model data for reporting and analytics.
- **Serving Layer:** Power analytics dashboards and business intelligence queries.

---

## 📂 Repository Structure

```text
shopstream-data-engineering/
├── sql/
│   └── schema.sql          # DDL schemas for the raw ingestion layer (PostgreSQL)
├── .env.example            # Template for environment variables (DB credentials)
├── .gitignore              # Ignored files (credentials, virtualenv, logs)
├── requirements.txt        # Python package dependencies
├── test_connection.py      # Database connectivity healthcheck script
└── README.md               # Project documentation
```

---

## 🚀 Current Milestone (Stage 1: Foundation)

- [x] **Repository & Security Setup:** Git configuration, `.gitignore` rules, and template `.env.example`.
- [x] **Database Connectivity:** Python connection handler using `psycopg` (Version 3) and `python-dotenv`.
- [x] **Initial DDL Schema:** Raw data tables defined in `sql/schema.sql`:
  - `raw.raw_customers`
  - `raw.raw_products`

---

## 🗺️ Upcoming Roadmap

- [ ] **Stage 2: Data Ingestion:** Automated data pipeline to load customer and product records.
- [ ] **Stage 3: Orders & Transaction Streams:** Schema expansion for orders, items, and inventory stock changes.
- [ ] **Stage 4: Data Transformation & Modeling:** Dimensional modeling (Star Schema) and transformation pipelines.
- [ ] **Stage 5: Orchestration & Analytics:** Automated workflow scheduling and dashboard reporting.

---

## 🛠️ Local Development Setup

### 1. Clone the repository
```bash
git clone https://github.com/Rishi9911/Daily-Need-Shop-Store.git
cd Daily-Need-Shop-Store
```

### 2. Set up Python Virtual Environment
```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

### 3. Install Dependencies
```powershell
pip install -r requirements.txt
```

### 4. Configure Environment Variables
Copy `.env.example` to `.env` and fill in your PostgreSQL credentials:
```powershell
Copy-Item .env.example .env
```

### 5. Verify Database Connection
```powershell
python test_connection.py
```

---

## 👤 Author
- **Rishi** — [@Rishi9911](https://github.com/Rishi9911)
