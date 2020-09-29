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
use Illuminate\Http\Request;

class HomeController extends Controller
{
    private $slide, $brand, $cate, $post, $postCate, $intro, $service, $recruitment, $contact, $project, $product;
    public function __construct(Slide $slide, Brand $brand, Categories $cate, Post $post, PostCate $postCate, Intro $intro, Service $service, Recruitment $recruitment, Contact $contact, Project $project, Product $product)
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
    }

    public function index()
    {
        $slides = $this->slide->whereNull('deleted_at')->get();
        $brands = $this->brand->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $colors = ['#54b6c4', '#b8a7cc', '#e8b25b', '#6e88a3', '#e57c91', '#5a9ac3'];
        $firstPostCate = $this->postCate->whereNull('deleted_at')->first();
        $posts = $this->post->whereNull('deleted_at')->where('post_cate_id', $firstPostCate->id)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        return view('front-end.home', [
            'page'=>'home',
            'slides'=>$slides,
            'brands'=>$brands,
            'parentCates'=>$parentCates,
            'colors'=>$colors,
            'posts'=>$posts,
            'postCates'=>$postCates
        ]);
    }

    public function intro(){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $intro = $this->intro->whereNull('deleted_at')->first();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        return view('front-end.intro', [
            'page'=>'intro',
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'hotNews'=>$hotNews,
            'intro'=>$intro
        ]);
    }

    public function service(){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $service = $this->service->whereNull('deleted_at')->first();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        return view('front-end.service', [
            'page'=>'service',
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'hotNews'=>$hotNews,
            'service'=>$service
        ]);
    }

    public function recruitment(){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $recruitment = $this->recruitment->whereNull('deleted_at')->first();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        return view('front-end.recruitment', [
            'page'=>'recruitment',
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'hotNews'=>$hotNews,
            'recruitment'=>$recruitment
        ]);
    }

    public function contact(){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        return view('front-end.contact', [
            'page'=>'contact',
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'slides'=>$slides,
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
        $slides = $this->slide->whereNull('deleted_at')->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $postCate = $this->postCate->where('slug', $slug)->whereNull('deleted_at')->first();
        $posts = $this->post->where('post_cate_id', $postCate->id)->whereNull('deleted_at')->latest()->paginate(5);
        return view('front-end.list-news', [
            'postCates'=>$postCates,
            'postCate'=>$postCate,
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'posts'=>$posts,
            'page'=>'news',
            'hotNews'=>$hotNews
        ]);
    }

    public function listProject(){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $projects = $this->project->whereNull('deleted_at')->latest()->paginate(5);
        return view('front-end.list-project', [
            'postCates'=>$postCates,
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'projects'=>$projects,
            'page'=>'news',
            'hotNews'=>$hotNews
        ]);
    }

    public function detailNews($slug){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $post = $this->post->where('slug',$slug)->whereNull('deleted_at')->first();
        $relatedPost = $this->post->inRandomOrder()->whereNull('deleted_at')->limit(6)->get();

        return view('front-end.detail-news', [
            'postCates'=>$postCates,
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'page'=>'news',
            'hotNews'=>$hotNews,
            'post'=>$post,
            'relatedPost'=>$relatedPost
        ]);
    }

    public function detailProject($slug){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $project = $this->project->where('slug',$slug)->whereNull('deleted_at')->first();

        return view('front-end.detail-project', [
            'postCates'=>$postCates,
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'page'=>'news',
            'hotNews'=>$hotNews,
            'project'=>$project
        ]);
    }

    public function listCateProduct($slug){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $cate = $this->cate->whereNull('deleted_at')->where('slug', $slug)->first();
        return view('front-end.list-cate-product', [
            'page'=>'product',
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'hotNews'=>$hotNews,
            'cate'=>$cate,
            'brands'=>$brands
        ]);
    }

    public function listProduct($slug){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $cate = $this->cate->whereNull('deleted_at')->where('slug', $slug)->first();
        $products = $cate->products()->whereNull('deleted_at')->where('category_id', $cate->id)->latest()->paginate(8);
        return view('front-end.list-product', [
            'page'=>'product',
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'hotNews'=>$hotNews,
            'cate'=>$cate,
            'brands'=>$brands,
            'products'=>$products
        ]);
    }

    public function detailProduct($slug){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
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
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'hotNews'=>$hotNews,
            'cate'=>$cate,
            'brands'=>$brands,
            'product'=>$product,
            'productRelated'=>$productRelated
        ]);
    }

    public function brandListProduct($slug){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $brand = $this->brand->whereNull('deleted_at')->where('slug', $slug)->first();
        if ($brand == null){
            return  redirect('/');
        }
        $products = $brand->products()->whereNull('deleted_at')->where('brand_id', $brand->id)->latest()->paginate(8);

        return view('front-end.brand-list-product', [
            'page'=>'product',
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'hotNews'=>$hotNews,
            'brand'=>$brand,
            'brands'=>$brands,
            'products'=>$products
        ]);
    }

    public function searchProduct(Request $request){
        $slides = $this->slide->whereNull('deleted_at')->get();
        $parentCates = $this->cate->whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = $this->postCate->whereNull('deleted_at')->get();
        $brands = $this->brand->whereNull('deleted_at')->get();
        $hotNews = $this->post->whereNull('deleted_at')->latest()->limit(5)->get();
        $products = $this->product->whereNull('deleted_at')->where('name', 'like', '%'.$request->key.'%')->latest()->paginate(8);
        return view('front-end.search-product', [
            'page'=>'product',
            'slides'=>$slides,
            'parentCates'=>$parentCates,
            'postCates'=>$postCates,
            'hotNews'=>$hotNews,
            'key'=>$request->key,
            'brands'=>$brands,
            'products'=>$products
        ]);
    }
}
