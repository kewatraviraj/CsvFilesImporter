/**
 * 
 */
package com.goods.daoimpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.goods.dao.GoodsDao;
import com.goods.model.Goods;

/**
 * @author INEXTURE
 *
 */
@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	@PersistenceContext 
	protected EntityManager entitymanager;
	
	/* (non-Javadoc)
	 * @see com.goods.dao.Goodsdao#listData()
	 */
	public List<Goods> list() {
		// TODO Auto-generated method stub
		return this.entitymanager.createQuery("SELECT d FROM Goods d").getResultList();	
	}

}
