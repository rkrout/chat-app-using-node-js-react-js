CREATE TABLE `users` (
    `id` BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    `email` VARCHAR(30) NOT NULL UNIQUE,
    `password` VARCHAR(100) NOT NULL,
    `profileImgUrl` VARCHAR(100),
    `profileImgId` VARCHAR(100),
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `messages` (
    `id` BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    `message` VARCHAR(255),
    `senderId` BIGINT(20),
    `receiverId` BIGINT(20),
    `sendAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`senderId`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`receiverId`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

