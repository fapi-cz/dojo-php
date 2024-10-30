<?php declare(strict_types = 1);

namespace Tests;

use Dojo\Main;
use Tester\Assert;
use Tester\TestCase;

require_once __DIR__ . '/../vendor/autoload.php';

class MainTest extends TestCase
{

	public function testProcess(): void {
		$main = new Main();
		$result = $main->process('Hello World');
		Assert::same([], $result);
		Assert::same([1], $main->process(''));
	}
}

(new MainTest())->run();
