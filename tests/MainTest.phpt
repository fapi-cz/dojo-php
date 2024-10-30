<?php declare(strict_types = 1);

namespace Tests;

use Tester\Assert;

require_once __DIR__ . '/../vendor/autoload.php';

class MainTest
{

	public function testProcess(): void {
		$main = new \DOJO\Main();
		$result = $main->process('Hello World');
		Assert::same([], $result);
	}
}
