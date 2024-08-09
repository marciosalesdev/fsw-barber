/*
  Warnings:

  - You are about to drop the column `endereco` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `telefone` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `BarbershopService` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `User` table. All the data in the column will be lost.
  - Added the required column `address` to the `Barbershop` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Barbershop` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `BarbershopService` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Barbershop" DROP COLUMN "endereco",
DROP COLUMN "nome",
DROP COLUMN "telefone",
ADD COLUMN     "address" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "phones" TEXT[];

-- AlterTable
ALTER TABLE "BarbershopService" DROP COLUMN "nome",
ADD COLUMN     "name" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "nome",
ADD COLUMN     "name" TEXT NOT NULL;
