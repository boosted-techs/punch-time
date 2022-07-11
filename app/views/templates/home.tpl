{extends file="index.tpl"}
{block name="body"}
    <div class="row">
        <div class="col-xl-6 col-xxl-12">
            <div class="row">
                <div class="col-md-12 text-center p-3">
                    <h5 class="h5">Welcome to Punch Time</h5>
                    {if isset($smarty.get.m)}
                        <div class="alert alert-{if $smarty.get.s == 'ERROR'}danger{else}success{/if}">
                            {$smarty.get.m}
                        </div>
                    {/if}
                </div>

                </div>
            </div>
        </div>

{/block}
{block name="scripts"}

{/block}
