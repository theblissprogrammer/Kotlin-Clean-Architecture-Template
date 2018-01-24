package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.jiffyondemand.user.R
import com.jiffyondemand.user.commons.activities.BaseFragment
import java.lang.ref.WeakReference
import kotlinx.android.synthetic.main.content_${res_name}.*

 class ${className}Fragment: BaseFragment(), ${className}Displayable {
 
	// VIP variables
    private val interactor: ${className}BusinessLogic by lazy {
        ${className}Interactor(
                presenter = ${className}Presenter(WeakReference(this))
        )
    }

    private val router: ${className}Routable by lazy {
        ${className}Router(WeakReference(this.activity))
    }

    //  View models
    private var viewModel: ${className}Models.ViewModel? = null
        set(value) {
            field = value

            if (isResumed)
                loadUI()
        }
	
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val rootView = inflater.inflate(R.layout.fragment_${res_name}, container, false)
        loadData()
        return rootView
    }

    private fun loadData() {
        TODO("interactor.fetch")
    }
	
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setTitle(getString(R.string.app_name))
        setHomeAsUp(true)
        loadListeners()
    }

    private fun loadUI() {
        viewModel?.apply {
			TODO("Load UI")
        }
    }
	
    private fun loadListeners() {
        TODO("Create onClickViewListeners")
    }
 }