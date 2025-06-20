<?php declare(strict_types = 1);

namespace Tests;

use Dojo\Main;
use Tester\Assert;
use Tester\TestCase;

require_once __DIR__ . '/../vendor/autoload.php';

class MainTest extends TestCase
{

	public function testReturnsNumberAsString()
	{
		$fb = new Main();
		Assert::same("1", $fb->fizzBuzz(1));
	}

}

(new MainTest())->run();
