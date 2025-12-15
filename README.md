ClassSystenData 資料庫文件
1. 資料庫概述 (Schema Overview)

ClassSystenData 資料庫是一個用於管理學校課程、系所、教師和使用者選課資訊的系統。其核心結構由以下六個主資料表和兩個連結資料表組成。
2. 資料表結構與細節 (Table Structure & Details)
A. academicSystemType (學制類型表)

記錄了學校提供的各類學制名稱。 | 欄位名稱 | 類型 | 說明 | 鍵值 | 來源檔案 | | :--- | :--- | :--- | :--- | :--- | | academicSystemID | INT | 學制代碼 (主鍵) | PRIMARY KEY, AUTO_INCREMENT | academicSystemType.sql | | academicSystemName | VARCHAR(500) | 學制名稱 (例：'四技', '碩士班') | | academicSystemType.sql |

    初始資料範例： (1, '二專'), (4, '四技'), (6, '碩士班')

B. departments (系所表)

記錄了學校的各個系所，並關聯到所屬的學制。 | 欄位名稱 | 類型 | 說明 | 鍵值 | 來源檔案 | | :--- | :--- | :--- | :--- | :--- | | departmentID | VARCHAR(10) | 系所代碼 (主鍵) | PRIMARY KEY | departments.sql | | departmentName | VARCHAR(255) | 系所中文名稱 | | departments.sql | | academicSystemID | INT | 外鍵，連結 academicSystemType | FOREIGN KEY | departments.sql |

    關聯性： 與 academicSystemType 形成 一對多 關係 (一個學制有多個系所)。

C. courses (課程表)

記錄了所有課程的詳細資訊，包括課程內容、開課學期、開課系所等。 | 欄位名稱 | 類型 | 說明 | 鍵值 | 來源檔案 | | :--- | :--- | :--- | :--- | :--- | | courseID | VARCHAR(255) | 課程代碼 (主鍵) | PRIMARY KEY | courses.sql | | courseName | VARCHAR(255) | 課程中文名稱 | | courses.sql | | courseENName | VARCHAR(255) | 課程英文名稱 | | courses.sql | | courseIntroduction | VARCHAR(2000) | 課程中文摘要 | | courses.sql | | departmentID | VARCHAR(10) | 外鍵，連結 departments | FOREIGN KEY | courses.sql | | semester | INT | 開課學期 (例：1132) | | courses.sql | | credits | INT | 學分數 | | courses.sql | | 其他欄位 | - | courseNote, grade, courseType 等 | | courses.sql |

    關聯性：

        與 departments 形成 一對多 關係 (一個系所開設多門課程)。

        ON DELETE CASCADE：若父表 (departments) 的記錄被刪除，子表 (courses) 中相關的記錄也會被自動刪除。

D. teachers (教師表)

記錄了所有教師的基本資訊。 | 欄位名稱 | 類型 | 說明 | 鍵值 | 來源檔案 | | :--- | :--- | :--- | :--- | :--- | | teacherID | INT | 教師代碼 (主鍵) | PRIMARY KEY | teachers.sql | | teacherName | VARCHAR(255) | 教師姓名 | | teachers.sql |
E. users (使用者表)

記錄了系統所有使用者的登入資訊。 | 欄位名稱 | 類型 | 說明 | 鍵值 | 來源檔案 | | :--- | :--- | :--- | :--- | :--- | | userID | VARCHAR(255) | 使用者 ID (主鍵) | PRIMARY KEY | users.sql | | username | VARCHAR(50) | 帳號名稱 | UNIQUE KEY | users.sql | | password | VARCHAR(255) | 密碼 (通常應為雜湊值) | | users.sql | | isadmin | TINYINT(1) | 是否為管理員 (0=否, 1=是) | | users.sql |

    初始資料範例： ('122214225', 'jimny', 'student', 0), ('MIKU', 'Hatsunemiku', 'admin39', 1)

3. 連結資料表 (Junction Tables)

連結資料表用於處理多對多 (Many-to-Many) 的關係。
F. courseteacher (課程與教師連結表)

連結一門課程與所有教授該課程的教師。 | 欄位名稱 | 類型 | 說明 | 鍵值 | 來源檔案 | | :--- | :--- | :--- | :--- | :--- | | teacherID | INT | 外鍵，連結 teachers | FOREIGN KEY | courseteacher.sql | | courseID | VARCHAR(255) | 外鍵，連結 courses | FOREIGN KEY | courseteacher.sql |

    關聯性： 建立 courses 與 teachers 之間的 多對多 關係。

G. userAndCourseEnrollments (使用者選課連結表)

記錄了使用者與其選修課程的關係 (選課記錄)。 | 欄位名稱 | 類型 | 說明 | 鍵值 | 來源檔案 | | :--- | :--- | :--- | :--- | :--- | | userID | VARCHAR(255) | 外鍵，連結 users | PRIMARY KEY (複合) | userAndCourseEnrollments.sql | | courseID | VARCHAR(255) | 外鍵，連結 courses | PRIMARY KEY (複合) | userAndCourseEnrollments.sql |

    關聯性： 建立 users 與 courses 之間的 多對多 關係。

    複合主鍵： (userID, courseID)，表示一個使用者不能重複選修同一門課。
