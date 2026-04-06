# eDM: Electronic Document Management

eDM is a high-performance, native Windows application designed for high-volume document digitization and management. Built with C++ and integrated with MSSQL, it provides a robust solution for scanning, manipulating, and automatically indexing documents via barcode recognition.

## 🚀 Key Features

* **Native Windows Performance:** Developed in C++ for low latency and efficient memory management during high-resolution scans.
* **Intelligent Batch Scanning:** Automates the processing of large document stacks by using barcodes as logical separators and record identifiers.
* **Barcode Integration:** Automatically assigns scanned images to the correct database records by parsing barcode data in real-time.
* **Image Manipulation:** Integrated toolkit for enhancing, rotating, and cleaning up scanned images before final archival.
* **Database Management:** Seamless integration with **MSSQL Server** for secure metadata storage and file path indexing.
* **Record Lifecycle Management:** Tools to search, retrieve, and manage both the physical data and the associated digital files.

## 🛠️ Technical Stack

* **Language:** C++
* **IDE:** Visual Studio
* **Database:** Microsoft SQL Server (MSSQL)
* **Imaging:** TWAIN/WIA (for scanner interfacing)
* **Storage:** Hybrid (Metadata in SQL, Images on File System/Blob)

## 📋 Prerequisites

Before setting up the project, ensure you have the following installed:
* Visual Studio (2019 or newer recommended with C++ Desktop Development workload)
* Microsoft SQL Server
* Compatible TWAIN/WIA Document Scanner
* SQL Server Native Client


## 📖 Usage

### Batch Scanning Workflow
1.  Place documents with barcodes into the ADF (Auto Document Feeder).
2.  Select **Batch Scan** mode in the eDM interface.
3.  The application will automatically:
    * Scan the pages.
    * Detect barcodes to identify the start of a new record.
    * Map the images to the corresponding `RecordID` in the MSSQL database.
    * Store the processed files in the designated storage directory.

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

---
*Developed for efficient document workflows.*
