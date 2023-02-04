using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using vue.Models;

namespace vue.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            ViewBag.mark = "首頁";
            ViewBag.title = "Triangle";
            return View();
        }

        // 資源
        public IActionResult source()
        {
            ViewBag.title = "Triangle文章分享";
            return View();
        }

        public IActionResult sourcePage()
        {
            ViewBag.title = "Triangle資源";
            return View();
        }

        public IActionResult psychologicalTest()
        {
            ViewBag.title = "Triangle適性測驗";
            return View();
        }

        public IActionResult testResult()
        {
            ViewBag.title = "Triangle測驗結果";
            return View();
        }

        public IActionResult aboutUs()
        {
            ViewBag.title = "Triangle關於我們";
            return View();
        }

        public IActionResult sourceIndex()
        {
            ViewBag.title = "Triangle關於我們";
            return View();
        }

        //圖片上傳
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Upload(IEnumerable<IFormFile> files)
        {
            var time = DateTime.Now.ToString("yyyyMMddHHmm");
            var sec = DateTime.Now.ToString("");

            if (files.Count() != 0)
            {
                foreach (IFormFile file in files)
                {
                    string Targetfilename = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/photo", time+file.FileName);



                    using (FileStream stream = new FileStream(
                        Targetfilename, FileMode.Create))
                        await file.CopyToAsync(stream);
                }
            }
            else { ModelState.AddModelError("files", "尚未選取上傳檔案!"); }
            Thread.Sleep(500);
            return View("~/Views/Home/memberDetail.cshtml");
        }



        //會員中心
        public IActionResult memberLogin()
        {
            ViewBag.title = "Triangle會員登入";
            return View();
        }
        public IActionResult forgetPassword()
        {
            ViewBag.title = "Triangle忘記密碼";
            return View();
        }

        public IActionResult memberSignup()
        {
            ViewBag.title = "Triangle註冊";
            return View();
        }

        public IActionResult memberCenter()
        {
            ViewBag.title = "Triangle會員中心";
            return View();
        }

        public IActionResult memberApply()
        {
            ViewBag.title = "Triangle應徵紀錄";
            return View();
        }

        public IActionResult memberFocus()
        {
            ViewBag.title = "Triangle關注職缺";
            return View();
        }

        public IActionResult memberVacancies()
        {
            ViewBag.title = "Triangle收到職缺";
            return View();
        }

        public IActionResult memberBlacklist()
        {
            ViewBag.title = "Triangle會員黑名單";
            return View();
        }

        public IActionResult memberDetail()
        {
            ViewBag.title = "Triangle會員資料";
            return View();
        }

        //企業端
        public IActionResult enterpriseCenter()
        {
            ViewBag.title = "Triangle企業會員中心";
            return View();
        }

        public IActionResult enterpriseVacancies()
        {
            ViewBag.title = "Triangle開放職缺";
            return View();
        }
        public IActionResult enterpriseCV()
        {
            ViewBag.title = "Triangle收到履歷";
            return View();
        }
        public IActionResult enterpriseInvite()
        {
            ViewBag.title = "Triangle送出應徵邀請";
            return View();
        }
        public IActionResult enterpriseBlacklist ()
        {
            ViewBag.title = "Triangle公司黑名單";
            return View();

        }

        public IActionResult vacancyManage()
        {
            ViewBag.title = "Triangle職缺管理";
            return View();
        }


        public IActionResult enterpriseDetail()
        {
            return View();
            ViewBag.title = "Triangle修改會員資料";

        }


        public IActionResult application()
        {
            return View();
        }

        public IActionResult postVacancies()
        {
            ViewBag.title = "Triangle新增職缺";
            return View();

        }
        public IActionResult editVacancies()
        {
            ViewBag.title = "Triangle編輯職缺";
            return View();

        }


        //論壇
        public IActionResult platform()
        {
            ViewBag.title = "Triangle論壇";
            return View();
        }

        public IActionResult platformPost()
        {
            ViewBag.title = "Triangle發文分享";
            return View();
        }

        public IActionResult platformArticle()
        {
            ViewBag.title = "Triangle論壇";
            return View();
        }

        //找工作
        public IActionResult jobList()
        {
            ViewBag.mark = "找工作";
            ViewBag.title = "Triangle找工作";
            return View();

        }
        public IActionResult jobSingle()
        {
            ViewBag.title = "Triangle職缺";
            return View();
        }
        public IActionResult jobApply()
        {
            ViewBag.title = "Triangle應徵工作";
            return View();
        }

        //課程
        public IActionResult courseShop()
        {
            ViewBag.title = "Triangle線上課程";
            return View();

        }

        public IActionResult courseManage()
        {
            ViewBag.title = "Triangle課程管理";
            return View();

        }

        public IActionResult courseDetail()
        {
            ViewBag.title = "Triangle課程";
            return View();

        }
        public IActionResult payPage()
        {
            ViewBag.title = "Triangle購買課程";
            return View();
        }
        public IActionResult confirm()
        {
            ViewBag.title = "Triangle確認付款";
            return View();
        }

        //履歷
        public IActionResult CV()
        {
            ViewBag.title = "Triangle履歷";
            return View();
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}