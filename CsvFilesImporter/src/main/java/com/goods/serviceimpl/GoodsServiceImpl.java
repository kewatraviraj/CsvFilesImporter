/**
 * 
 */
package com.goods.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.dao.GoodsDao;
import com.goods.model.Goods;
import com.goods.service.GoodsService;

/**
 * @author Dell
 *
 */
@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	GoodsDao goodsdetail;
	/* (non-Javadoc)
	 * @see com.goods.service.GoodsService#listData()
	 */
	public List<Goods> listData() {
		return goodsdetail.list();
	}

}
