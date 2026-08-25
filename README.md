# Bloodlytics 🩸

Bloodlytics is a cross-platform mobile health analytics application designed to help users understand and track their laboratory results through automated report ingestion, biomarker extraction, historical comparisons, and AI-powered insights.

The application is currently under active development, with the goal of creating an intelligent health analytics system that transforms complex laboratory reports into structured, understandable health information.

---

# Project Status

🚧 **Currently in Development**

Bloodlytics is an ongoing software engineering project focused on building a scalable mobile health analytics application.

Current development focuses include:

- Mobile application development
- Laboratory report management workflows
- Biomarker data visualization
- Backend API architecture
- PDF report processing
- Database modeling
- AI-powered health insights

Features and architecture are actively evolving as the application progresses.

---

# Project Vision

Medical laboratory reports contain valuable health information, but interpreting trends across multiple reports can be difficult.

Bloodlytics aims to simplify this process by providing users with a centralized mobile application to:

- Upload and organize laboratory reports
- Extract structured biomarker data
- Track health metrics over time
- Identify abnormal results
- Visualize historical trends
- Generate understandable summaries from laboratory data

The long-term goal is to bridge the gap between raw medical data and actionable health insights.

---

# Planned Features

## Laboratory Report Management

Bloodlytics is designed to allow users to upload and manage laboratory reports.

Planned functionality includes:

- PDF laboratory report ingestion
- Automated biomarker extraction
- Report categorization
- Historical report storage
- Download and viewing capabilities
- Processing status tracking

---

## Biomarker Extraction Pipeline

The backend will process uploaded laboratory documents and transform unstructured report data into structured biomarker records.

Planned workflow:

1. User uploads a laboratory PDF report through the mobile application
2. Backend extracts relevant text and values
3. Biomarkers are normalized into structured formats
4. Results are stored for future analysis
5. Users can view trends and insights through the mobile application

---

## Health Analytics

The mobile application provides an organized view of laboratory records and biomarker information.

Planned functionality includes:

- Laboratory report history
- Extraction status tracking
- Report categorization
- Abnormal result flags
- Physician/order information
- Biomarker filtering
- Historical trend visualization

Example laboratory report fields:

| Field             | Description                                         |
| ----------------- | --------------------------------------------------- |
| Report Name       | Uploaded laboratory report identifier               |
| Date              | Report collection or upload date                    |
| Extraction Status | Processing state of biomarker extraction            |
| Type              | Laboratory category such as Hematology or Chemistry |
| Flags             | High/low biomarker abnormality indicators           |
| Ordered By        | Healthcare provider information                     |

---

## AI-Powered Health Insights

A planned AI layer will generate human-readable summaries from structured biomarker data.

Potential capabilities:

- Explain abnormal biomarker values
- Summarize health trends
- Compare historical results
- Highlight significant changes
- Provide simplified interpretations of laboratory data

---

# Planned System Architecture

Bloodlytics follows a full-stack architecture designed for scalability.

```text
Bloodlytics
│
├── Mobile Application
│   ├── Flutter
│   ├── Dart
│   ├── Mobile UI
│   ├── Report Management
│   └── Data Visualization
│
├── Backend API
│   ├── Python
│   ├── FastAPI
│   ├── REST API Endpoints
│   ├── PDF Processing
│   └── Biomarker Extraction
│
├── Database
│   └── PostgreSQL
│       ├── User Profiles
│       ├── Laboratory Reports
│       ├── Biomarkers
│       └── Historical Results
│
└── AI Insights Layer
    ├── Biomarker Analysis
    ├── Trend Detection
    └── Natural Language Summaries
```

---

# Technology Stack

## Mobile Application

- Flutter
- Dart
- Material Design

---

## Backend

- Python
- FastAPI
- REST APIs
- OpenAPI Documentation

---

## Database

- PostgreSQL

Planned database responsibilities:

- User profile management
- Laboratory report storage
- Biomarker records
- Historical health trends

---

# API Design

The backend will provide typed RESTful APIs for communication between the mobile application and backend services.

Planned API capabilities include:

- Uploading laboratory reports
- Retrieving biomarker data
- Managing user health profiles
- Accessing historical trends
- Generating health summaries

FastAPI will provide:

- Request validation
- Response schemas
- Automatic OpenAPI documentation
- Strong typing between mobile application and backend systems

---

# Security Considerations

Because Bloodlytics handles sensitive health-related information, security is a major design consideration.

Planned security features:

- User authentication and authorization
- Secure API communication
- Protected user-specific data access
- Database access controls
- Input validation
- Secure document processing

---

# Future Roadmap

Planned improvements include:

- Complete PDF laboratory report extraction pipeline
- Implement authentication system
- Build biomarker visualization dashboards
- Add historical health trend graphs
- Integrate AI-generated health summaries
- Improve database schema and relationships
- Add automated report categorization
- Support multiple healthcare providers
- Deploy cross-platform mobile application

---

# Development Goals

Bloodlytics demonstrates practical experience with:

- Cross-platform mobile application development
- Full-stack application development
- Backend API design
- Database modeling
- Document processing pipelines
- Health data visualization
- AI-assisted software features

---

# Author

**Thilochan Pathmanathan**

GitHub: https://github.com/t-pathmanathan

LinkedIn: https://www.linkedin.com/in/t-pathmanathan/
