package net.ishop.servlet.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.ishop.form.ProductForm;
import net.ishop.model.ShoppingCart;
import net.ishop.util.SessionUtils;

@WebServlet("/ajax/json/product/add")
public class AddProductController extends AbstractProductController {
	private static final long serialVersionUID = -3046216247699203961L;

	@Override
	protected void processProductForm(ProductForm form, ShoppingCart shoppingCart, HttpServletRequest req, HttpServletResponse resp) 
				throws ServletException, IOException {
		getOrderService().addProductToShoppingCart(form, shoppingCart);
		String cookieValue = getOrderService().serializeShoppingCart(shoppingCart);
		SessionUtils.updateCurrentShoppingCartCookie(cookieValue, resp);
	}
}
