using Entities.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Contracts
{
    public interface IOwnerRepository : IRepositoryBase<Owner>
    {
        IEnumerable<Owner> GetAllOwners();

        Owner GetOwnerById(Guid ownerId);

        Owner GetOwnerWithDetails(Guid ownerId);

        Task<IEnumerable<Owner>> GetAllOwnersAsync();

        Task<Owner> GetOwnerByIdAsync(Guid ownerId);

        Task<Owner> GetOwnerWithDetailsAsync(Guid ownerId);

        void CreateOwner(Owner owner);

        void UpdateOwner(Owner owner);

        void DeleteOwner(Owner owner);
    }
}