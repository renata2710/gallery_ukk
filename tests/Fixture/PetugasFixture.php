<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * PetugasFixture
 */
class PetugasFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'id' => 1,
                'nik' => '',
                'nama' => 'Lorem ipsum dolor sit amet',
                'username' => 'Lorem ipsum dolor sit amet',
                'password' => 'Lorem ipsum dolor sit amet',
                'telp' => 'Lorem ipsum dolor sit amet',
                'level' => 'Lorem ipsum dolor sit amet',
            ],
        ];
        parent::init();
    }
}
