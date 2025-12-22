🎓 國北護課程管理系統 (ClassSystenData) 資料庫說明文件
1. 系統概覽

本資料庫旨在管理校園內的課程資訊、系所結構、教師授課、大樓地圖以及學生的選課/收藏行為。系統支援多系所、多學制，並具備完整的外鍵約束以確保資料一致性。
2. 資料表結構與關係圖 (ERD Summary)
A. 核心基礎表 (Core Infrastructure)

    buildings (大樓表)：儲存校園大樓代碼（如 B, G, S）與名稱。

    buildingMaps (大樓地圖表)：儲存各棟大樓的平面圖路徑，用於前端顯示。

    academicSystemType (學制表)：定義學制（如二專、四技、碩博班）。

    departments (系所表)：連結系所與對應的學制。

    class (班級表)：儲存所有班級代碼與名稱。

B. 成員與帳戶表 (Membership & Accounts)

    users (使用者表)：整合學生與管理員資料。

        註：classID 關聯至 class.classID。

    teachers (教師表)：儲存教師基本資訊。

C. 課程管理 (Course Management)

    courses (課程主表)：包含課程中英文簡介、學分、上課時間、地點（大樓代碼）等關鍵資訊。

    classroom (教室詳細表)：具體定義課程所在的房間號碼。

    courseteacher (授課關聯表)：處理多對多關係（一門課可由多位老師合授）。

D. 使用者互動 (User Interaction)

    userEnrollments：正式選課紀錄（含選課狀態）。

    userFavorites：課程收藏清單。

    userPreSelects：預選課程清單。
