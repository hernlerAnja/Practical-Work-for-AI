
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/3RHX.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/3RHX.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1143,1157,1249,1250,389,1255,1256,1257,202,200,201,207,234,236,237,238,1173,1172,799,774,792,771,205,632,551,748,749,733,385,204,373,256,257,258,387,388,519,753,802] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2540,2353,2355,2404,2358,2385,2403,2405,2356,2934,2937,2916,2793,2794,2795,2912,3437,2718,2684,2686,2685,2382,2555,2556,2955,2956,2958,2962,3360,3359,2352,3345,3443,3444,2384,3330,3436,2911,2896,2552] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4087,4082,4085,4086,1700,3943,4061,1846,1839,1842,1843,1844,1845,1849,1688,3942,1690,1818,1819,3858,3909,4078,4079,3915,3925,3926,3931,3912,4093,4100,1850,1682,1683,1699,1836,1615,1857,4089] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4079,4081,3797,3830,3800,3993,3653,4030,3630,3934,3935,4056,4064,4074] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1838,1691,1692,1380,1983,1986,1554,1826,1981,1557,1786,1787,1410,1813,1831,1821] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3616,3293,3306,3307,3308,3617,3655,3656,3657,3740,3625,3521,3525,3536,3524,3538,3495,3305,3479,3480,3487,3493] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3944,3593,3595,3566,3950,3951,3567,3611,3635,3956,3959,3938,1742,1741,1743,3945,3946,3948,1779] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [701,702,705,707,708,699,700,697,698,4,43,473,474,402,432,437,404,398] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1357,1144,1145,1146,1404,1330,1343,1140,818,1359,1626] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1208,1209,1210,1211,1212,953,984,841,903,959,926,928,929,930,931,952] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        