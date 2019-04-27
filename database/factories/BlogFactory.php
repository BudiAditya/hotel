<?php
use Faker\Generator as Faker;
use App\Models\Post;

$factory->define(Post::class, function (Faker $faker) {
    return [
		'title' => $faker->sentence(2),
		'slug' => $faker->sentence(1),
		'id_post_category' => $faker->randomElement(['1' ,'2', '3']),
		'content' => $faker->sentence(),
		'feature_image' => $faker->imageUrl($width = 640, $height = 480),
		'created_at' => now(),
		'updated_at' => now(),
		'posted_by' => "Super Admin"
	];
});

//untuk create php artisan make:factory NamaFactory 
//untuk manggilnya : buka php artisan tinker, kemudian factory(App\Model::class, 1000)->create();