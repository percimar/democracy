-- CreateTable
CREATE TABLE "Thing" (
    "id" INT4 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "name" STRING NOT NULL,
    "score" INT4 NOT NULL DEFAULT 0,
    "pickerId" INT4,

    CONSTRAINT "Thing_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Picker" (
    "id" INT4 NOT NULL GENERATED BY DEFAULT AS IDENTITY,

    CONSTRAINT "Picker_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Thing" ADD CONSTRAINT "Thing_pickerId_fkey" FOREIGN KEY ("pickerId") REFERENCES "Picker"("id") ON DELETE SET NULL ON UPDATE CASCADE;
