# <p align="center> Spring Data JPA </p>
---

### Quick recap:
* **Owning side:** The side that controls the relationship and usually contains the foreign key column.
* **Inverse side (mappedBy side):** The side that maps the relationship but doesn't own it.

### Where to put fetch = FetchType.LAZY or EAGER?
**You put the fetch type on the side where the collection or association is declared.**
* For `@OneToMany` or `@ManyToMany` **collections** (which are usually on the inverse side), **the fetch type defaults to LAZY**.
* For` @ManyToOne` or `@OneToOne` (usually on the owning side), **the fetch type defaults to EAGER**.
