const express = require("express");
const router = express.Router();
const multer = require("multer");
const mysql = require("mysql2");

// Database connection
const db = mysql.createConnection({
  host: "localhost",
  user: "root",        // your MySQL username
  password: "",        // your MySQL password
  database: "school_portal"
});

// File upload config
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "uploads/"); // folder where files will be saved
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + "-" + file.originalname);
  }
});

const upload = multer({ storage: storage });

// POST route for submission
router.post("/review0", upload.single("file"), (req, res) => {
  const {
    studentId,
    studentName,
    className,
    objective,
    implementation,
    tools,
    presentation
  } = req.body;

  const filePath = req.file ? req.file.filename : null;

  const sql = `
    INSERT INTO submissions
    (student_id, student_name, class_name, file_path, objective, implementation, tools, presentation_status)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?)
  `;

  db.query(sql, [studentId, studentName, className, filePath, objective, implementation, tools, presentation],
    (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ msg: "Database error" });
      }
      res.json({ msg: "Submission saved successfully!" });
    }
  );
});

module.exports = router;
