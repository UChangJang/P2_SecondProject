package comma.board.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;
import java.util.*;
public class BoardDAO {
    private static SqlSessionFactory ssf;
    static
    {
    	try
    	{
    		Reader reader=Resources.getResourceAsReader("Config.xml");
    		ssf=new SqlSessionFactoryBuilder().build(reader);
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    }
    // 전체 데이터 읽기 
    public static List<BoardVO> boardAllData(Map map)
    {
    	SqlSession session=ssf.openSession();
    	List<BoardVO> list=session.selectList("boardAllData",map);
    	session.close();
    	return list;
    }
    public static int boardTotalPage()
    {
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("boardRowCount");
    	session.close();
    	return (int)(Math.ceil(count/10.0));
    }
    public static BoardVO boardContentData(int no)
    {
    	SqlSession session=ssf.openSession(true);
    	session.update("boardHitIncrement",no);
    	session.close();
    	session=ssf.openSession();
    	BoardVO vo=session.selectOne("boardContentData", no);
    	session.close();
    	return vo;
    }
    public static void boardInsert(BoardVO vo)
    {
    	SqlSession session=ssf.openSession(true);
    	session.insert("boardInsert",vo);
    	session.close();
    }
    public static BoardVO boardUpdate(int no)
    {
    	SqlSession session=ssf.openSession();
    	BoardVO vo=session.selectOne("boardContentData", no);
    	session.close();
    	return vo;
    }
    public static boolean boardUpdateOk(BoardVO vo)
    {
    	boolean bCheck=false;
    	SqlSession session=ssf.openSession();
    	String pwd=session.selectOne("boardGetPwd", vo.getNo());
    	session.close();
    	if(pwd.equals(vo.getPwd()))
    	{
    		bCheck=true;
    		session=ssf.openSession(true);
    		session.update("boardUpdate",vo);
    		session.close();
    	}
    	else
    	{
    		bCheck=false;
    	}
    	return bCheck;
    }
    public static int replyCount(int bno)
    {
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("replyCount", bno);
    	session.close();
    	return count;
    }
    public static List<ReplyVO> replyAllData(Map map)
    {
    	SqlSession session=ssf.openSession();// Connection
    	List<ReplyVO> list=session.selectList("replyAllData",map);
    	session.close();// 반환
    	return list;
    }
    public static void replyInsert(ReplyVO vo)
    {
    	SqlSession session=ssf.openSession(true);
    	session.insert("replyInsert",vo);
    	session.close();
    }
    public static void replyUpdate(ReplyVO vo)
    {
    	SqlSession session=ssf.openSession(true);
    	session.update("replyUpdate",vo);
    	session.close();
    }
    public static ReplyVO replyParentData(int no)
    {
    	SqlSession session=ssf.openSession();
    	ReplyVO vo=session.selectOne("replyParentData", no);
    	session.close();
    	return vo;
    }
    // replyStepIncrement
    public static void replyStepIncrement(ReplyVO vo)
    {
    	SqlSession session=ssf.openSession(true);
    	session.update("replyStepIncrement",vo);
    	session.close();
    }
    
    public static void replyReInsert(ReplyVO vo)
    {
    	SqlSession session=ssf.openSession(true);
    	session.insert("replyReInsert",vo);
    	session.close();
    }
    
    public static void replyDepthIncrement(int no)
    {
    	SqlSession session=ssf.openSession(true);
    	session.update("replyDepthIncrement",no);
    	session.close();
    }
    
    public static ReplyVO replyDeleteData(int no)
    {
    	SqlSession session=ssf.openSession();
    	ReplyVO vo=session.selectOne("replyDeleteData", no);
    	session.close();
    	return vo;
    }
    
    public static void replyDelete(int no)
    {
    	SqlSession session=ssf.openSession(true);
    	session.delete("replyDelete",no);
    	session.close();
    }
    
    public static void replyMsgUpdate(int no)
    {
    	SqlSession session=ssf.openSession(true);
    	session.update("replyMsgUpdate",no);
    	session.close();
    }
    
    public static void replyDepthDecrement(int no)
    {
    	SqlSession session=ssf.openSession(true);
    	session.update("replyDepthDecrement",no);
    	session.close();
    }
    
    public static void boardDelete(int no)
    {
    	SqlSession session=ssf.openSession(true);
    	session.delete("replyAllDelete",no);
    	session.delete("boardDelete",no);
    	session.close();
    }
    public static String boardGetPwd(int no)
    {
    	SqlSession session=ssf.openSession();
    	String pwd=session.selectOne("boardGetPwd2", no);
    	session.close();
    	return pwd;
    }
}




