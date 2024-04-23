<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * PengaduanFixture
 */
class PengaduanFixture extends TestFixture
{
    /**
     * Table name
     *
     * @var string
     */
    public string $table = 'pengaduan';
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
                'tg_pengaduan' => '2024-04-03 14:02:19',
                'isi_laporan' => 'Lorem ipsum dolor sit amet, aliquet feugiat. Convallis morbi fringilla gravida, phasellus feugiat dapibus velit nunc, pulvinar eget sollicitudin venenatis cum nullam, vivamus ut a sed, mollitia lectus. Nulla vestibulum massa neque ut et, id hendrerit sit, feugiat in taciti enim proin nibh, tempor dignissim, rhoncus duis vestibulum nunc mattis convallis.',
                'foto' => 'Lorem ipsum dolor sit amet',
                'status' => 'Lorem ipsum dolor sit amet',
                'petugas_id' => 1,
            ],
        ];
        parent::init();
    }
}
