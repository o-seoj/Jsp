package greendae.user.dto.student;

public class EnrollListDTO {
      private String c_id;
        private String c_name;
        private String grade;
        private String professor;
        private int credit;
        private String type;
        private String time;
        private String classroom;

        // getter / setter
        public String getC_id() { return c_id; }
        public void setC_id(String c_id) { this.c_id = c_id; }

        public String getC_name() { return c_name; }
        public void setC_name(String c_name) { this.c_name = c_name; }

        public String getGrade() { return grade; }
        public void setGrade(String grade) { this.grade = grade; }

        public String getProfessor() { return professor; }
        public void setProfessor(String professor) { this.professor = professor; }

        public int getCredit() { return credit; }
        public void setCredit(int credit) { this.credit = credit; }

        public String getType() { return type; }
        public void setType(String type) { this.type = type; }

        public String getTime() { return time; }
        public void setTime(String time) { this.time = time; }

        public String getClassroom() { return classroom; }
        public void setClassroom(String classroom) { this.classroom = classroom; }
}
