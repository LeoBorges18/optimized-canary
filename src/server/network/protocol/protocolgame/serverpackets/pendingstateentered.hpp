/**
 * The Forgotten Server - a free and open-source MMORPG server emulator
 * Copyright (C) 2019  Mark Samman <mark.samman@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef SRC_SERVER_NETWORK_PROTOCOL_PROTOCOLGAME_SERVERPACKETS_SENDPENDINGSTATEENTERED_HPP_
#define SRC_SERVER_NETWORK_PROTOCOL_PROTOCOLGAME_SERVERPACKETS_SENDPENDINGSTATEENTERED_HPP_

#include "server/network/protocol/protocolgame/networkpacketbuffer.hpp"

class ServerPacketPendingStateEntered final : public NetworkPacketBuffer
{
	public:
		constexpr ServerPacketPendingStateEntered(Player* sender) : NetworkPacketBuffer(sender), serverPacket(NETWORK_SERVERPACKET_PENDINGSTATEENTERED) {};
		ServerPacketPendingStateEntered* getData() const override final {
			return this;
		}

		bool AppendToNetworkMessage() override final {
			if (!IsInitialized()) {
				return false;
			}

			msg.addByte(serverPacket);
			return true;
		}
};

#endif  // SRC_SERVER_NETWORK_PROTOCOL_PROTOCOLGAME_SERVERPACKETS_SENDPENDINGSTATEENTERED_HPP_