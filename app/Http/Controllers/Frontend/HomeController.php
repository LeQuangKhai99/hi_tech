<?php

namespace App\Http\Controllers\Frontend;

use App\Brand;
use App\Categories;
use App\Contact;
use App\Http\Controllers\Controller;
use App\Intro;
use App\Post;
use App\PostCate;
use App\Product;
use App\Project;
use App\Recruitment;
use App\Service;
use App\Slide;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Str;

class HomeController extends Controller
{
    private $slide, $brand, $cate, $post, $postCate, $intro, $service, $recruitment, $contact, $project, $product, $user;
    public function __construct(User $user,Slide $slide, Brand $brand, Categories $cate, Post $post, PostCate $postCate, Intro $intro, Service $service, Recruitment $recruitment, Contact $contact, Project $project, Product $product)
    {
        $this->slide = $slide;
        $this->brand = $brand;
        $this->cate = $cate;
        $this->post = $post;
        $this->postCate = $postCate;
        $this->intro = $intro;
        $this->service = $service;
        $this->recruitment = $recruitment;
        $this->contact = $contact;
        $this->project = $project;
        $this->product = $product;
        $this->user = $user;
        ini_set('max_execution_time', 10000);
    }

    public function test() {

//        return
//        for ($i = 0; $i < 10000; $i ++) {
//            $product = $this->product->create([
//                'name'=>'fdsafsd',
//                'price'=>32432,
//                'inventory' => 42343,
//                'slug'=>'sdgdfgdsfgfsd',
//                'model'=> 1,
//                'made_by'=>'sdvaf',
//                'des'=>'gjhfghjfg',
//                'content'=>'sdfafdsa',
//                'image_path'=>'fdsafdsaa' ,
//                'user_id'=>1,
//                'category_id'=>1,
//                'brand_id'=>1
//            ]);
//        }return 'ok';
//        $products = Redis::get('dcm1');
//        if (is_null($products)) {
//            $products = json_encode($this->product->get(), true);
//            Redis::set('dcm1', $products);
//            return $products;
//        }
//        return $products;
    }
    public function index()
    {
        $brands = $this->brand->whereNull('deleted_at')->get();
        Redis::set('bla', json_encode($brands, true));
        $colors = ['#54b6c4', '#b8a7cc', '#e8b25b', '#6e88a3', '#e57c91', '#5a9ac3'];
        $firstPostCate = $this->postCate->whereNull('deleted_at')->first();
        $posts = $this->post->whereNull('deleted_at')->where('post_cate_id', $firstPostCate->id)->get();
        return view('front-end.home', [
            'page'=>'home',
            'brands'=>$brands,
            'colors'=>$colors,
            'posts'=>$posts,
        ]);
    }

    public function editInfo(){
        $user = $this->user->find(auth()->user()->id);
        return view('front-end.edit-info', [
            'page' => 'info',
            'user' => $user
        ]);
    }

    public function updateInfo(Request $request){
        $user = $this->user->find(auth()->user()->id);
        $user->update([
            'name' => $request->name,
            'phone' => $request->phone,
            'address' => $request->address,
        ]);
        return redirect()->route('front-end.edit-info')->with(['update-oke'=>'oke']);
    }

    public function changePass(){
        return view('front-end.change-pass', [
            'page' => 'info'
        ]);
    }

    public function postChangePass(Request $request){
        $user = $this->user->find(auth()->user()->id);
        $user->update([
            'password' => Hash::make($request->pass),
        ]);
        return redirect()->route('front-end.change-pass')->with(['update-oke'=>'oke']);
    }

    public function orderInfo(){
        $orders = auth()->user()->orders;
        return view('front-end.order-info', [
            'page' => 'info',
            'orders' => $orders
        ]);
    }

    public function intro(){
        $intro = $this->intro->whereNull('deleted_at')->first();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        return view('front-end.intro', [
            'page'=>'intro',
            'hotNews'=>$hotNews,
            'intro'=>$intro
        ]);
    }

    public function service(){
        $service = $this->service->whereNull('deleted_at')->first();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        return view('front-end.service', [
            'page'=>'service',
            'hotNews'=>$hotNews,
            'service'=>$service
        ]);
    }

    public function recruitment(){
        $recruitment = $this->recruitment->whereNull('deleted_at')->first();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        return view('front-end.recruitment', [
            'page'=>'recruitment',
            'hotNews'=>$hotNews,
            'recruitment'=>$recruitment
        ]);
    }

    public function contact(){
        return view('front-end.contact', [
            'page'=>'contact',
        ]);
    }

    public function addContact(Request $request){
        $this->contact->create([
            'name'=>$request->name,
            'phone'=>$request->phone,
            'email'=>$request->email,
            'address'=>$request->address,
            'title'=>$request->title,
            'content'=>$request->content1
        ]);
        return redirect()->route('front-end.contact')->with('add-oke','oke');
    }

    public function listNews($slug){
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $postCate = $this->postCate->where('slug', $slug)->whereNull('deleted_at')->first();
        $posts = $this->post->where('post_cate_id', $postCate->id)->whereNull('deleted_at')->latest()->paginate(5);
        return view('front-end.list-news', [
            'postCate'=>$postCate,
            'posts'=>$posts,
            'page'=>'news',
            'hotNews'=>$hotNews
        ]);
    }

    public function listProject(){
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $projects = $this->project->whereNull('deleted_at')->latest()->paginate(5);
        return view('front-end.list-project', [
            'projects'=>$projects,
            'page'=>'news',
            'hotNews'=>$hotNews
        ]);
    }

    public function detailNews($slug){
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $post = $this->post->where('slug',$slug)->whereNull('deleted_at')->first();
        $relatedPost = $this->post->inRandomOrder()->whereNull('deleted_at')->limit(6)->get();

        return view('front-end.detail-news', [
            'page'=>'news',
            'hotNews'=>$hotNews,
            'post'=>$post,
            'relatedPost'=>$relatedPost
        ]);
    }

    public function detailProject($slug){
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $project = $this->project->where('slug',$slug)->whereNull('deleted_at')->first();

        return view('front-end.detail-project', [
            'page'=>'news',
            'hotNews'=>$hotNews,
            'project'=>$project
        ]);
    }

    public function listCateProduct($slug){
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $cate = $this->cate->whereNull('deleted_at')->where('slug', $slug)->first();
        return view('front-end.list-cate-product', [
            'page'=>'product',
            'hotNews'=>$hotNews,
            'cate'=>$cate,
            'brands'=>$brands
        ]);
    }

    public function listProduct($slug){
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $cate = $this->cate->whereNull('deleted_at')->where('slug', $slug)->first();
        $products = $cate->products()->with('brand')->whereNull('deleted_at')->where('category_id', $cate->id)->latest()->paginate(8);
        return view('front-end.list-product', [
            'page'=>'product',
            'hotNews'=>$hotNews,
            'cate'=>$cate,
            'brands'=>$brands,
            'products'=>$products
        ]);
    }

    public function detailProduct($slug){
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();

        $product = $this->product->whereNull('deleted_at')->where('slug', $slug)->first();
        if ($product == null){
            return  redirect('/');
        }
        $cate = $product->category()->whereNull('deleted_at')->first();

        $productRelated = $this->product->whereNull('deleted_at')->where('category_id', $cate->id)->where('id', '<>', $product->id)->get();
        return view('front-end.detail-product', [
            'page'=>'product',
            'hotNews'=>$hotNews,
            'cate'=>$cate,
            'brands'=>$brands,
            'product'=>$product,
            'productRelated'=>$productRelated
        ]);
    }

    public function brandListProduct($slug){
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $brand = $this->brand->whereNull('deleted_at')->where('slug', $slug)->first();
        if ($brand == null){
            return  redirect('/');
        }
        $products = $brand->products()->with('brand')->whereNull('deleted_at')->where('brand_id', $brand->id)->latest()->paginate(8);

        return view('front-end.brand-list-product', [
            'page'=>'product',
            'hotNews'=>$hotNews,
            'brand'=>$brand,
            'brands'=>$brands,
            'products'=>$products,
        ]);
    }

    public function searchProduct(Request $request){
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $products = $this->product->whereNull('deleted_at')->where('name', 'like', '%'.$request->key.'%')->latest()->paginate(8);
        return view('front-end.search-product', [
            'page'=>'product',
            'hotNews'=>$hotNews,
            'key'=>$request->key,
            'brands'=>$brands,
            'products'=>$products
        ]);
    }
}
