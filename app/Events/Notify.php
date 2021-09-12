<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class Notify implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    private $idOrder, $mess;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($idOrder, $mess)
    {
        $this->idOrder = $idOrder;
        $this->mess = $mess;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new Channel('notify');
    }

    public function broadcastAs() {
        return 'notify';
    }

    public function broadcastWith()
    {
        return [
            'idOrder' => $this->idOrder,
            'mess' => $this->mess,
        ];
    }
}
