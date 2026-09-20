	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import shiwuleixing from '@/views/shiwuleixing/list'
	import news from '@/views/news/list'
	import fenxibaogao from '@/views/fenxibaogao/list'
	import yundongreliang from '@/views/yundongreliang/list'
	import shuimianjianyi from '@/views/shuimianjianyi/list'
	import jibingjilu from '@/views/jibingjilu/list'
	import yinshireliang from '@/views/yinshireliang/list'
	import storeup from '@/views/storeup/list'
	import yundongleixing from '@/views/yundongleixing/list'
	import yundongjilu from '@/views/yundongjilu/list'
	import yundongtuijian from '@/views/yundongtuijian/list'
	import yonghu from '@/views/yonghu/list'
	import yinshituijian from '@/views/yinshituijian/list'
	import yinshijilu from '@/views/yinshijilu/list'
	import shuimianguanli from '@/views/shuimianguanli/list'
	import config from '@/views/config/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/shiwuleixing',
			name: '食物类型',
			component: shiwuleixing
		}
		,{
			path: '/news',
			name: '公告资讯',
			component: news
		}
		,{
			path: '/fenxibaogao',
			name: '分析报告',
			component: fenxibaogao
		}
		,{
			path: '/yundongreliang',
			name: '运动热量',
			component: yundongreliang
		}
		,{
			path: '/shuimianjianyi',
			name: '睡眠建议',
			component: shuimianjianyi
		}
		,{
			path: '/jibingjilu',
			name: '疾病记录',
			component: jibingjilu
		}
		,{
			path: '/yinshireliang',
			name: '饮食热量',
			component: yinshireliang
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/yundongleixing',
			name: '运动类型',
			component: yundongleixing
		}
		,{
			path: '/yundongjilu',
			name: '运动记录',
			component: yundongjilu
		}
		,{
			path: '/yundongtuijian',
			name: '运动推荐',
			component: yundongtuijian
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/yinshituijian',
			name: '饮食推荐',
			component: yinshituijian
		}
		,{
			path: '/yinshijilu',
			name: '饮食记录',
			component: yinshijilu
		}
		,{
			path: '/shuimianguanli',
			name: '睡眠管理',
			component: shuimianguanli
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
