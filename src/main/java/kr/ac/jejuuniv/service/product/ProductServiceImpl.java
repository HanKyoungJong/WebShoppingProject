package kr.ac.jejuuniv.service.product;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.jejuuniv.dao.product.ProductDao;
import kr.ac.jejuuniv.model.Product;
import kr.ac.jejuuniv.model.User;
import kr.ac.jejuuniv.service.cart.CartService;
import kr.ac.jejuuniv.service.file.FileService;
import kr.ac.jejuuniv.util.CurrentTime;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private FileService fileService;

	private CartService cartService;

	@Override
	public Product findProduct(long id) {
		return productDao.findProductById(id);
	}

	@Override
	public List<Product> productList() {
		return productDao.findAllProducts();
	}

	@Override
	public Product getLatestProduct() {
		return productDao.findLatestProduct();
	}

	@Override
	public List<Product> myProductList(String seller) {
		return productDao.findMyProducts(seller);
	}

	@Override
	public void removeProduct(long id) {

		Product existProduct = findProduct(id);

		if (existProduct != null) {
			String existedUploadImgPath = existProduct.getUploadImgPath();
			fileService.deleteFile(existedUploadImgPath);
			productDao.deleteProduct(id);
			cartService.deleteProduct(id);
		}
	}

	@Override
	public void registeProduct(Product product, HttpSession session) {

		MultipartFile inputfile = product.getImgFile();

		String dirPath = getRootPath(session) + getDetailPath();
		File uploadFile = fileService.uploadFile(inputfile, dirPath);

		String imgPath = getDetailPath() + uploadFile.getName();
		String uploadImgPath = uploadFile.getAbsolutePath();

		User loginUser = (User) session.getAttribute("loginUser");
		String seller = loginUser.getName();

		product.setImgPath(imgPath);
		product.setUploadImgPath(uploadImgPath);
		product.setSeller(seller);
		product.setDate(CurrentTime.getNow());

		Product existProduct = findProduct(product.getId());

		if (existProduct == null) {
			productDao.insertProduct(product);
		} else {
			String existedUploadImgPath = existProduct.getUploadImgPath();
			fileService.deleteFile(existedUploadImgPath);
			productDao.updateProduct(product);
		}
	}

	private String getRootPath(HttpSession session) {
		return session.getServletContext().getRealPath("/") + File.separator;
	}

	private String getDetailPath() {
		return "resources" + File.separator + "upload" + File.separator;
	}
}
