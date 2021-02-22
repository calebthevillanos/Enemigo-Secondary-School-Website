package enemigoweb.bean;

import java.io.Serializable;
import java.util.ArrayList;

public class Result implements Serializable
{

    private int id;
    private Student student;
    private String resultClass;
    private String term;
    private ArrayList<String> subjects;
    private ArrayList<Integer> scores;
    private String totalscore;

    public Result()
    {
        subjects = new ArrayList<>();
        scores = new ArrayList<>();
    }

    public String getTotalscore()
    {
        return totalscore;
    }

    public void setTotalscore(String totalscore)
    {
        this.totalscore = totalscore;
    }


    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public Student getStudent()
    {
        return student;
    }

    public void setStudent(Student student)
    {
        this.student = student;
    }

    public String getResultClass()
    {
        return resultClass;
    }

    public void setResultClass(String resultClass)
    {
        this.resultClass = resultClass;
    }

    public String getTerm()
    {
        return term;
    }

    public void setTerm(String term)
    {
        this.term = term;
    }

    public ArrayList<String> getSubjects()
    {
        return subjects;
    }

    public void addSubject(String subject)
    {
        subjects.add(subject);
    }

    public ArrayList<Integer> getScores()
    {
        return scores;
    }

    public void addScore(int score)
    {
        scores.add(score);
    }
    
    
}
