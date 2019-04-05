using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AuthServer.Host.Migrations
{
    public partial class ModifyIds4Entities : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "CreationTime",
                table: "tb_IdentityResources",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<Guid>(
                name: "CreatorId",
                table: "tb_IdentityResources",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "DeleterId",
                table: "tb_IdentityResources",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DeletionTime",
                table: "tb_IdentityResources",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "tb_IdentityResources",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<DateTime>(
                name: "LastModificationTime",
                table: "tb_IdentityResources",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "LastModifierId",
                table: "tb_IdentityResources",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "CreationTime",
                table: "tb_Clients",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<Guid>(
                name: "CreatorId",
                table: "tb_Clients",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "DeleterId",
                table: "tb_Clients",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DeletionTime",
                table: "tb_Clients",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "tb_Clients",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<DateTime>(
                name: "LastModificationTime",
                table: "tb_Clients",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "LastModifierId",
                table: "tb_Clients",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "CreationTime",
                table: "tb_ApiResources",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<Guid>(
                name: "CreatorId",
                table: "tb_ApiResources",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "DeleterId",
                table: "tb_ApiResources",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DeletionTime",
                table: "tb_ApiResources",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "tb_ApiResources",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<DateTime>(
                name: "LastModificationTime",
                table: "tb_ApiResources",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "LastModifierId",
                table: "tb_ApiResources",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CreationTime",
                table: "tb_IdentityResources");

            migrationBuilder.DropColumn(
                name: "CreatorId",
                table: "tb_IdentityResources");

            migrationBuilder.DropColumn(
                name: "DeleterId",
                table: "tb_IdentityResources");

            migrationBuilder.DropColumn(
                name: "DeletionTime",
                table: "tb_IdentityResources");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "tb_IdentityResources");

            migrationBuilder.DropColumn(
                name: "LastModificationTime",
                table: "tb_IdentityResources");

            migrationBuilder.DropColumn(
                name: "LastModifierId",
                table: "tb_IdentityResources");

            migrationBuilder.DropColumn(
                name: "CreationTime",
                table: "tb_Clients");

            migrationBuilder.DropColumn(
                name: "CreatorId",
                table: "tb_Clients");

            migrationBuilder.DropColumn(
                name: "DeleterId",
                table: "tb_Clients");

            migrationBuilder.DropColumn(
                name: "DeletionTime",
                table: "tb_Clients");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "tb_Clients");

            migrationBuilder.DropColumn(
                name: "LastModificationTime",
                table: "tb_Clients");

            migrationBuilder.DropColumn(
                name: "LastModifierId",
                table: "tb_Clients");

            migrationBuilder.DropColumn(
                name: "CreationTime",
                table: "tb_ApiResources");

            migrationBuilder.DropColumn(
                name: "CreatorId",
                table: "tb_ApiResources");

            migrationBuilder.DropColumn(
                name: "DeleterId",
                table: "tb_ApiResources");

            migrationBuilder.DropColumn(
                name: "DeletionTime",
                table: "tb_ApiResources");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "tb_ApiResources");

            migrationBuilder.DropColumn(
                name: "LastModificationTime",
                table: "tb_ApiResources");

            migrationBuilder.DropColumn(
                name: "LastModifierId",
                table: "tb_ApiResources");
        }
    }
}
