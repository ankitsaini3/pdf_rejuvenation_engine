pdf-rejuvenation-engine/
│── README.md                   # Project overview and setup instructions
│── requirements.txt            # Python dependencies
│── setup.py                    # Installation script (if packaging as pip module)
│── Dockerfile                  # Containerization setup
│── docker-compose.yml          # Optional for multi-service setup
│── .env                        # Environment variables (API keys, configs)
│── .gitignore                  # Ignore unnecessary files
│
├── config/
│   ├── settings.yaml           # Configurable parameters (OCR options, thresholds)
│   ├── logging.conf            # Logging configuration
│
├── data/
│   ├── input/                  # Raw input PDFs
│   ├── processed/              # Preprocessed images (deskewed, cleaned)
│   ├── output/                 # Final rejuvenated PDFs
│   ├── temp/                   # Temporary working directory
│
├── docs/
│   ├── architecture.md         # Architecture details
│   ├── deployment.md           # Deployment guide
│   ├── api_docs.md             # API documentation (if exposed as REST API)
│
├── src/
│   ├── __init__.py
│   │
│   ├── preprocessing/          # Stage 1: Image cleaning & enhancement
│   │   ├── __init__.py
│   │   ├── deskew.py
│   │   ├── denoise.py
│   │   ├── enhance.py
│   │
│   ├── ocr/                    # Stage 2: OCR & text extraction
│   │   ├── __init__.py
│   │   ├── tesseract_engine.py
│   │   ├── math_ocr.py
│   │   ├── layout_analysis.py
│   │
│   ├── reconstruction/         # Stage 3: Rebuild structured PDF
│   │   ├── __init__.py
│   │   ├── pdf_builder.py
│   │   ├── formatting.py
│   │
│   ├── utils/                  # Helper modules
│   │   ├── __init__.py
│   │   ├── file_io.py
│   │   ├── logging_utils.py
│   │   ├── config_loader.py
│   │
│   ├── pipeline.py             # Main orchestration pipeline
│   ├── cli.py                  # Command line interface
│   ├── api.py                  # REST API (FastAPI/Flask)
│
├── tests/                      # Unit & integration tests
│   ├── test_preprocessing.py
│   ├── test_ocr.py
│   ├── test_reconstruction.py
│
└── deployment/
    ├── kubernetes/             # Helm charts, YAML configs
    ├── aws/                    # AWS deployment configs
    ├── gcp/                    # GCP deployment configs
