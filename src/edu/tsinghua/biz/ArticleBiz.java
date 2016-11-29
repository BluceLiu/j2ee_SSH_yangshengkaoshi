package edu.tsinghua.biz;

import java.util.List;

import edu.tsinghua.dao.ArticleDao;
import edu.tsinghua.entity.Article;

public class ArticleBiz {
	ArticleDao articleDao;
	
	public ArticleDao getArticleDao() {
		return articleDao;
	}

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	/**
	 * ��ѯ��������
	 * */
	public List<Article> getAll(){
		return articleDao.getAll();
	} 

	/**
	 * ��ѯ��������
	 * */
	public List<Article> getPart(Article art){
		return articleDao.getPart(art);
	}
	/**
	 * ɾ��
	 * */
	public void deleteOne(Article art){
		articleDao.deleteOne(art);
	}
	/**
	 * ����
	 * */
	public void insertOne(Article art){
		articleDao.insertOne(art);
	}
	/**
	 * ��ѯһ������
	 * */
	public Article getOne(Article art){
		return articleDao.getOne(art);
	}
	/**
	 *����
	 * */
	public void updateOne(Article art){
		articleDao.updateOne(art);
	}
}
